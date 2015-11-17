package compiler

import (
	"fmt"
	"os"
	"os/exec"
	"sort"

	"github.com/Workiva/frugal/compiler/parser"
)

type structLike string

const (
	structLikeStruct    structLike = "struct"
	structLikeException structLike = "exception"
	structLikeUnion     structLike = "union"
)

func generateThriftIDL(frugal *parser.Frugal) (string, error) {
	file := fmt.Sprintf("%s.thrift", frugal.Name)
	f, err := os.Create(file)
	if err != nil {
		return "", err
	}
	defer f.Close()

	contents := ""
	thrift := frugal.Thrift

	contents += generateNamespaces(thrift.Namespaces)
	contents += generateIncludes(thrift.Includes)
	contents += generateConstants(thrift.Constants)
	contents += generateTypedefs(thrift.Typedefs)
	contents += generateEnums(thrift.Enums)
	contents += generateStructLikes(thrift.Structs, structLikeStruct)
	contents += generateStructLikes(thrift.Unions, structLikeUnion)
	contents += generateStructLikes(thrift.Exceptions, structLikeException)
	contents += generateServices(thrift.Services)

	_, err = f.WriteString(contents)
	return file, err
}

func generateNamespaces(namespaces map[string]string) string {
	contents := ""
	for lang, namespace := range namespaces {
		contents += fmt.Sprintf("namespace %s %s\n", lang, namespace)
	}
	contents += "\n"
	return contents
}

func generateIncludes(includes map[string]string) string {
	contents := ""
	for _, include := range includes {
		contents += fmt.Sprintf("include \"%s\"\n", include)
	}
	contents += "\n"
	return contents
}

func generateConstants(constants map[string]*parser.Constant) string {
	contents := ""
	for _, constant := range constants {
		if constant.Comment != nil {
			contents += generateThriftDocString(constant.Comment, "")
		}
		value := constant.Value
		if constant.Type.Name == "string" {
			value = fmt.Sprintf(`"%s"`, value)
		}
		contents += fmt.Sprintf("const %s %s = %v\n", constant.Type, constant.Name, value)
	}
	contents += "\n"
	return contents
}

func generateTypedefs(typedefs map[string]*parser.TypeDef) string {
	contents := ""
	for name, typedef := range typedefs {
		if typedef.Comment != nil {
			contents += generateThriftDocString(typedef.Comment, "")
		}
		contents += fmt.Sprintf("typedef %s %s\n", typedef.Type, name)
	}
	contents += "\n"
	return contents
}

func generateEnums(enums map[string]*parser.Enum) string {
	contents := ""
	for _, enum := range enums {
		if enum.Comment != nil {
			contents += generateThriftDocString(enum.Comment, "")
		}
		contents += fmt.Sprintf("enum %s {\n", enum.Name)
		values := make([]*parser.EnumValue, 0, len(enum.Values))
		for _, value := range enum.Values {
			values = append(values, value)
		}
		sort.Sort(enumValues(values))
		for _, value := range values {
			contents += fmt.Sprintf("\t%s,\n", value.Name)
		}
		contents += "}\n\n"
	}
	return contents
}

func generateStructLikes(structs map[string]*parser.Struct, typ structLike) string {
	contents := ""
	for _, strct := range structs {
		if strct.Comment != nil {
			contents += generateThriftDocString(strct.Comment, "")
		}
		contents += fmt.Sprintf("%s %s {\n", typ, strct.Name)
		for _, field := range strct.Fields {
			if field.Comment != nil {
				contents += generateThriftDocString(field.Comment, "\t")
			}
			contents += fmt.Sprintf("\t%d: ", field.ID)
			if field.Optional {
				contents += "optional "
			} else {
				contents += "required "
			}
			contents += fmt.Sprintf("%s %s", field.Type.String(), field.Name)
			if field.Default != nil {
				def := field.Default
				defStr := ""
				switch d := def.(type) {
				case string:
					defStr = fmt.Sprintf(`"%s"`, d)
				default:
					defStr = fmt.Sprintf("%v", d)
				}
				contents += fmt.Sprintf(" = %s", defStr)
			}
			contents += ",\n"
		}
		contents += "}\n\n"
	}
	return contents
}

func generateServices(services map[string]*parser.Service) string {
	contents := ""
	for _, service := range services {
		if service.Comment != nil {
			contents += generateThriftDocString(service.Comment, "")
		}
		contents += fmt.Sprintf("service %s ", service.Name)
		if service.Extends != "" {
			contents += fmt.Sprintf("%s ", service.Extends)
		}
		contents += "{\n"
		for _, method := range service.Methods {
			if method.Comment != nil {
				contents += generateThriftDocString(method.Comment, "\t")
			}
			contents += "\t"
			if method.Oneway {
				contents += "oneway "
			}
			if method.ReturnType == nil {
				contents += "void "
			} else {
				contents += fmt.Sprintf("%s ", method.ReturnType.String())
			}
			contents += fmt.Sprintf("%s(", method.Name)
			prefix := ""
			for _, arg := range method.Arguments {
				modifier := "required"
				if arg.Optional {
					modifier = "optional"
				}
				contents += fmt.Sprintf("%s%d:%s %s %s", prefix, arg.ID,
					modifier, arg.Type.String(), arg.Name)
				if arg.Default != nil {
					def := arg.Default
					defStr := ""
					switch d := def.(type) {
					case string:
						defStr = fmt.Sprintf(`"%s"`, d)
					default:
						defStr = fmt.Sprintf("%v", d)
					}
					contents += fmt.Sprintf(" = %s", defStr)
				}
				prefix = ", "
			}
			contents += ")"
			if len(method.Exceptions) > 0 {
				contents += " throws ("
				prefix := ""
				for _, exception := range method.Exceptions {
					contents += fmt.Sprintf("%s%d:%s %s", prefix, exception.ID,
						exception.Type.String(), exception.Name)
					prefix = ", "
				}
				contents += ")"
			}
			contents += ",\n\n"
		}
		contents += "}\n\n"
	}
	return contents
}

func generateThrift(out, gen, file string) error {
	args := []string{"-r"}
	if out != "" {
		args = append(args, "-out", out)
	}
	args = append(args, "-gen", gen)
	args = append(args, file)
	if out, err := exec.Command("thrift", args...).CombinedOutput(); err != nil {
		fmt.Println(string(out))
		return err
	}

	// Remove the intermediate Thrift file.
	return os.Remove(file)
}

func generateThriftDocString(comment []string, indent string) string {
	docstr := indent + "/**\n"
	for _, line := range comment {
		docstr += indent + " * " + line + "\n"
	}
	docstr += indent + " */\n"
	return docstr
}

type enumValues []*parser.EnumValue

func (e enumValues) Len() int {
	return len(e)
}

func (e enumValues) Swap(i, j int) {
	e[i], e[j] = e[j], e[i]
}

func (e enumValues) Less(i, j int) bool {
	return e[i].Value < e[j].Value
}

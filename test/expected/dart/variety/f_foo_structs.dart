// Autogenerated by Frugal Compiler (1.6.0)
// DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING

library variety.src.f_foo_structs;import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:variety/variety.dart' as t_variety;
import 'package:actual_base/actual_base.dart' as t_actual_base;

class ping_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("ping_args");



  ping_args() {
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("ping_args(");

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class ping_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("ping_result");



  ping_result() {
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("ping_result(");

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class blah_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("blah_args");
  static final TField _NUM_FIELD_DESC = new TField("num", TType.I32, 1);
  static final TField _STR_FIELD_DESC = new TField("Str", TType.STRING, 2);
  static final TField _EVENT_FIELD_DESC = new TField("event", TType.STRUCT, 3);

  int _num;
  static const int NUM = 1;
  String _str;
  static const int STR = 2;
  t_variety.Event _event;
  static const int EVENT = 3;

  bool __isset_num = false;

  blah_args() {
  }

  int get num => this._num;

  set num(int num) {
    this._num = num;
    this.__isset_num = true;
  }

  bool isSetNum() => this.__isset_num;

  unsetNum() {
    this.__isset_num = false;
  }

  String get str => this._str;

  set str(String str) {
    this._str = str;
  }

  bool isSetStr() => this.str != null;

  unsetStr() {
    this.str = null;
  }

  t_variety.Event get event => this._event;

  set event(t_variety.Event event) {
    this._event = event;
  }

  bool isSetEvent() => this.event != null;

  unsetEvent() {
    this.event = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case NUM:
        return this.num;
      case STR:
        return this.str;
      case EVENT:
        return this.event;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case NUM:
        if(value == null) {
          unsetNum();
        } else {
          this.num = value;
        }
        break;

      case STR:
        if(value == null) {
          unsetStr();
        } else {
          this.str = value;
        }
        break;

      case EVENT:
        if(value == null) {
          unsetEvent();
        } else {
          this.event = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case NUM:
        return isSetNum();
      case STR:
        return isSetStr();
      case EVENT:
        return isSetEvent();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case NUM:
          if(field.type == TType.I32) {
            num = iprot.readI32();
            this.__isset_num = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STR:
          if(field.type == TType.STRING) {
            str = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EVENT:
          if(field.type == TType.STRUCT) {
            event = new t_variety.Event();
            event.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_NUM_FIELD_DESC);
    oprot.writeI32(num);
    oprot.writeFieldEnd();
    if(this.str != null) {
      oprot.writeFieldBegin(_STR_FIELD_DESC);
      oprot.writeString(str);
      oprot.writeFieldEnd();
    }
    if(this.event != null) {
      oprot.writeFieldBegin(_EVENT_FIELD_DESC);
      event.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("blah_args(");

    ret.write("num:");
    ret.write(this.num);

    ret.write(", ");
    ret.write("str:");
    if(this.str == null) {
      ret.write("null");
    } else {
      ret.write(this.str);
    }

    ret.write(", ");
    ret.write("event:");
    if(this.event == null) {
      ret.write("null");
    } else {
      ret.write(this.event);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class blah_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("blah_result");
  static final TField _SUCCESS_FIELD_DESC = new TField("success", TType.I64, 0);
  static final TField _AWE_FIELD_DESC = new TField("awe", TType.STRUCT, 1);
  static final TField _API_FIELD_DESC = new TField("api", TType.STRUCT, 2);

  int _success;
  static const int SUCCESS = 0;
  t_variety.AwesomeException _awe;
  static const int AWE = 1;
  t_actual_base.api_exception _api;
  static const int API = 2;

  bool __isset_success = false;

  blah_result() {
  }

  int get success => this._success;

  set success(int success) {
    this._success = success;
    this.__isset_success = true;
  }

  bool isSetSuccess() => this.__isset_success;

  unsetSuccess() {
    this.__isset_success = false;
  }

  t_variety.AwesomeException get awe => this._awe;

  set awe(t_variety.AwesomeException awe) {
    this._awe = awe;
  }

  bool isSetAwe() => this.awe != null;

  unsetAwe() {
    this.awe = null;
  }

  t_actual_base.api_exception get api => this._api;

  set api(t_actual_base.api_exception api) {
    this._api = api;
  }

  bool isSetApi() => this.api != null;

  unsetApi() {
    this.api = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      case AWE:
        return this.awe;
      case API:
        return this.api;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case SUCCESS:
        if(value == null) {
          unsetSuccess();
        } else {
          this.success = value;
        }
        break;

      case AWE:
        if(value == null) {
          unsetAwe();
        } else {
          this.awe = value;
        }
        break;

      case API:
        if(value == null) {
          unsetApi();
        } else {
          this.api = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case SUCCESS:
        return isSetSuccess();
      case AWE:
        return isSetAwe();
      case API:
        return isSetApi();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case SUCCESS:
          if(field.type == TType.I64) {
            success = iprot.readI64();
            this.__isset_success = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case AWE:
          if(field.type == TType.STRUCT) {
            awe = new t_variety.AwesomeException();
            awe.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case API:
          if(field.type == TType.STRUCT) {
            api = new t_actual_base.api_exception();
            api.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(isSetSuccess()) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      oprot.writeI64(success);
      oprot.writeFieldEnd();
    }
    if(isSetAwe() && this.awe != null) {
      oprot.writeFieldBegin(_AWE_FIELD_DESC);
      awe.write(oprot);
      oprot.writeFieldEnd();
    }
    if(isSetApi() && this.api != null) {
      oprot.writeFieldBegin(_API_FIELD_DESC);
      api.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("blah_result(");

    if(isSetSuccess()) {
      ret.write("success:");
      ret.write(this.success);
    }

    if(isSetAwe()) {
      ret.write(", ");
      ret.write("awe:");
      if(this.awe == null) {
        ret.write("null");
      } else {
        ret.write(this.awe);
      }
    }

    if(isSetApi()) {
      ret.write(", ");
      ret.write("api:");
      if(this.api == null) {
        ret.write("null");
      } else {
        ret.write(this.api);
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class oneWay_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("oneWay_args");
  static final TField _ID_FIELD_DESC = new TField("id", TType.I64, 1);
  static final TField _REQ_FIELD_DESC = new TField("req", TType.MAP, 2);

  int _id;
  static const int ID = 1;
  Map<int, String> _req;
  static const int REQ = 2;

  bool __isset_id = false;

  oneWay_args() {
  }

  int get id => this._id;

  set id(int id) {
    this._id = id;
    this.__isset_id = true;
  }

  bool isSetId() => this.__isset_id;

  unsetId() {
    this.__isset_id = false;
  }

  Map<int, String> get req => this._req;

  set req(Map<int, String> req) {
    this._req = req;
  }

  bool isSetReq() => this.req != null;

  unsetReq() {
    this.req = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ID:
        return this.id;
      case REQ:
        return this.req;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case ID:
        if(value == null) {
          unsetId();
        } else {
          this.id = value;
        }
        break;

      case REQ:
        if(value == null) {
          unsetReq();
        } else {
          this.req = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case ID:
        return isSetId();
      case REQ:
        return isSetReq();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case ID:
          if(field.type == TType.I64) {
            id = iprot.readI64();
            this.__isset_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REQ:
          if(field.type == TType.MAP) {
            TMap elem51 = iprot.readMapBegin();
            req = new Map<int, String>();
            for(int elem53 = 0; elem53 < elem51.length; ++elem53) {
              int elem54 = iprot.readI32();
              String elem52 = iprot.readString();
              req[elem54] = elem52;
            }
            iprot.readMapEnd();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_ID_FIELD_DESC);
    oprot.writeI64(id);
    oprot.writeFieldEnd();
    if(this.req != null) {
      oprot.writeFieldBegin(_REQ_FIELD_DESC);
      oprot.writeMapBegin(new TMap(TType.I32, TType.STRING, req.length));
      for(var elem55 in req.keys) {
        oprot.writeI32(elem55);
        oprot.writeString(req[elem55]);
      }
      oprot.writeMapEnd();
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("oneWay_args(");

    ret.write("id:");
    ret.write(this.id);

    ret.write(", ");
    ret.write("req:");
    if(this.req == null) {
      ret.write("null");
    } else {
      ret.write(this.req);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class bin_method_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("bin_method_args");
  static final TField _BIN_FIELD_DESC = new TField("bin", TType.STRING, 1);
  static final TField _STR_FIELD_DESC = new TField("Str", TType.STRING, 2);

  Uint8List _bin;
  static const int BIN = 1;
  String _str;
  static const int STR = 2;


  bin_method_args() {
  }

  Uint8List get bin => this._bin;

  set bin(Uint8List bin) {
    this._bin = bin;
  }

  bool isSetBin() => this.bin != null;

  unsetBin() {
    this.bin = null;
  }

  String get str => this._str;

  set str(String str) {
    this._str = str;
  }

  bool isSetStr() => this.str != null;

  unsetStr() {
    this.str = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case BIN:
        return this.bin;
      case STR:
        return this.str;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case BIN:
        if(value == null) {
          unsetBin();
        } else {
          this.bin = value;
        }
        break;

      case STR:
        if(value == null) {
          unsetStr();
        } else {
          this.str = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case BIN:
        return isSetBin();
      case STR:
        return isSetStr();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case BIN:
          if(field.type == TType.STRING) {
            bin = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STR:
          if(field.type == TType.STRING) {
            str = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(this.bin != null) {
      oprot.writeFieldBegin(_BIN_FIELD_DESC);
      oprot.writeBinary(bin);
      oprot.writeFieldEnd();
    }
    if(this.str != null) {
      oprot.writeFieldBegin(_STR_FIELD_DESC);
      oprot.writeString(str);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("bin_method_args(");

    ret.write("bin:");
    if(this.bin == null) {
      ret.write("null");
    } else {
      ret.write("BINARY");
    }

    ret.write(", ");
    ret.write("str:");
    if(this.str == null) {
      ret.write("null");
    } else {
      ret.write(this.str);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class bin_method_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("bin_method_result");
  static final TField _SUCCESS_FIELD_DESC = new TField("success", TType.STRING, 0);
  static final TField _API_FIELD_DESC = new TField("api", TType.STRUCT, 1);

  Uint8List _success;
  static const int SUCCESS = 0;
  t_actual_base.api_exception _api;
  static const int API = 1;


  bin_method_result() {
  }

  Uint8List get success => this._success;

  set success(Uint8List success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  t_actual_base.api_exception get api => this._api;

  set api(t_actual_base.api_exception api) {
    this._api = api;
  }

  bool isSetApi() => this.api != null;

  unsetApi() {
    this.api = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      case API:
        return this.api;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case SUCCESS:
        if(value == null) {
          unsetSuccess();
        } else {
          this.success = value;
        }
        break;

      case API:
        if(value == null) {
          unsetApi();
        } else {
          this.api = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case SUCCESS:
        return isSetSuccess();
      case API:
        return isSetApi();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case SUCCESS:
          if(field.type == TType.STRING) {
            success = iprot.readBinary();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case API:
          if(field.type == TType.STRUCT) {
            api = new t_actual_base.api_exception();
            api.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(isSetSuccess() && this.success != null) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      oprot.writeBinary(success);
      oprot.writeFieldEnd();
    }
    if(isSetApi() && this.api != null) {
      oprot.writeFieldBegin(_API_FIELD_DESC);
      api.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("bin_method_result(");

    if(isSetSuccess()) {
      ret.write("success:");
      if(this.success == null) {
        ret.write("null");
      } else {
        ret.write("BINARY");
      }
    }

    if(isSetApi()) {
      ret.write(", ");
      ret.write("api:");
      if(this.api == null) {
        ret.write("null");
      } else {
        ret.write(this.api);
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class param_modifiers_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("param_modifiers_args");
  static final TField _OPT_NUM_FIELD_DESC = new TField("opt_num", TType.I32, 1);
  static final TField _DEFAULT_NUM_FIELD_DESC = new TField("default_num", TType.I32, 2);
  static final TField _REQ_NUM_FIELD_DESC = new TField("req_num", TType.I32, 3);

  int _opt_num;
  static const int OPT_NUM = 1;
  int _default_num;
  static const int DEFAULT_NUM = 2;
  int _req_num;
  static const int REQ_NUM = 3;

  bool __isset_opt_num = false;
  bool __isset_default_num = false;
  bool __isset_req_num = false;

  param_modifiers_args() {
  }

  int get opt_num => this._opt_num;

  set opt_num(int opt_num) {
    this._opt_num = opt_num;
    this.__isset_opt_num = true;
  }

  bool isSetOpt_num() => this.__isset_opt_num;

  unsetOpt_num() {
    this.__isset_opt_num = false;
  }

  int get default_num => this._default_num;

  set default_num(int default_num) {
    this._default_num = default_num;
    this.__isset_default_num = true;
  }

  bool isSetDefault_num() => this.__isset_default_num;

  unsetDefault_num() {
    this.__isset_default_num = false;
  }

  int get req_num => this._req_num;

  set req_num(int req_num) {
    this._req_num = req_num;
    this.__isset_req_num = true;
  }

  bool isSetReq_num() => this.__isset_req_num;

  unsetReq_num() {
    this.__isset_req_num = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case OPT_NUM:
        return this.opt_num;
      case DEFAULT_NUM:
        return this.default_num;
      case REQ_NUM:
        return this.req_num;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case OPT_NUM:
        if(value == null) {
          unsetOpt_num();
        } else {
          this.opt_num = value;
        }
        break;

      case DEFAULT_NUM:
        if(value == null) {
          unsetDefault_num();
        } else {
          this.default_num = value;
        }
        break;

      case REQ_NUM:
        if(value == null) {
          unsetReq_num();
        } else {
          this.req_num = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case OPT_NUM:
        return isSetOpt_num();
      case DEFAULT_NUM:
        return isSetDefault_num();
      case REQ_NUM:
        return isSetReq_num();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case OPT_NUM:
          if(field.type == TType.I32) {
            opt_num = iprot.readI32();
            this.__isset_opt_num = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DEFAULT_NUM:
          if(field.type == TType.I32) {
            default_num = iprot.readI32();
            this.__isset_default_num = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REQ_NUM:
          if(field.type == TType.I32) {
            req_num = iprot.readI32();
            this.__isset_req_num = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    if(!__isset_req_num) {
      throw new TProtocolError(TProtocolErrorType.UNKWOWN, "Required field 'req_num' was not present in struct param_modifiers_args");
    }
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_OPT_NUM_FIELD_DESC);
    oprot.writeI32(opt_num);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_DEFAULT_NUM_FIELD_DESC);
    oprot.writeI32(default_num);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_REQ_NUM_FIELD_DESC);
    oprot.writeI32(req_num);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("param_modifiers_args(");

    ret.write("opt_num:");
    ret.write(this.opt_num);

    ret.write(", ");
    ret.write("default_num:");
    ret.write(this.default_num);

    ret.write(", ");
    ret.write("req_num:");
    ret.write(this.req_num);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class param_modifiers_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("param_modifiers_result");
  static final TField _SUCCESS_FIELD_DESC = new TField("success", TType.I64, 0);

  int _success;
  static const int SUCCESS = 0;

  bool __isset_success = false;

  param_modifiers_result() {
  }

  int get success => this._success;

  set success(int success) {
    this._success = success;
    this.__isset_success = true;
  }

  bool isSetSuccess() => this.__isset_success;

  unsetSuccess() {
    this.__isset_success = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case SUCCESS:
        if(value == null) {
          unsetSuccess();
        } else {
          this.success = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case SUCCESS:
        return isSetSuccess();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case SUCCESS:
          if(field.type == TType.I64) {
            success = iprot.readI64();
            this.__isset_success = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(isSetSuccess()) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      oprot.writeI64(success);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("param_modifiers_result(");

    if(isSetSuccess()) {
      ret.write("success:");
      ret.write(this.success);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class underlying_types_test_args implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("underlying_types_test_args");
  static final TField _LIST_TYPE_FIELD_DESC = new TField("list_type", TType.LIST, 1);
  static final TField _SET_TYPE_FIELD_DESC = new TField("set_type", TType.SET, 2);

  List<int> _list_type;
  static const int LIST_TYPE = 1;
  Set<int> _set_type;
  static const int SET_TYPE = 2;


  underlying_types_test_args() {
  }

  List<int> get list_type => this._list_type;

  set list_type(List<int> list_type) {
    this._list_type = list_type;
  }

  bool isSetList_type() => this.list_type != null;

  unsetList_type() {
    this.list_type = null;
  }

  Set<int> get set_type => this._set_type;

  set set_type(Set<int> set_type) {
    this._set_type = set_type;
  }

  bool isSetSet_type() => this.set_type != null;

  unsetSet_type() {
    this.set_type = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case LIST_TYPE:
        return this.list_type;
      case SET_TYPE:
        return this.set_type;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case LIST_TYPE:
        if(value == null) {
          unsetList_type();
        } else {
          this.list_type = value;
        }
        break;

      case SET_TYPE:
        if(value == null) {
          unsetSet_type();
        } else {
          this.set_type = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case LIST_TYPE:
        return isSetList_type();
      case SET_TYPE:
        return isSetSet_type();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case LIST_TYPE:
          if(field.type == TType.LIST) {
            TList elem56 = iprot.readListBegin();
            list_type = new List<int>();
            for(int elem58 = 0; elem58 < elem56.length; ++elem58) {
              int elem57 = iprot.readI64();
              list_type.add(elem57);
            }
            iprot.readListEnd();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SET_TYPE:
          if(field.type == TType.SET) {
            TSet elem59 = iprot.readSetBegin();
            set_type = new Set<int>();
            for(int elem61 = 0; elem61 < elem59.length; ++elem61) {
              int elem60 = iprot.readI64();
              set_type.add(elem60);
            }
            iprot.readSetEnd();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(this.list_type != null) {
      oprot.writeFieldBegin(_LIST_TYPE_FIELD_DESC);
      oprot.writeListBegin(new TList(TType.I64, list_type.length));
      for(var elem62 in list_type) {
        oprot.writeI64(elem62);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    if(this.set_type != null) {
      oprot.writeFieldBegin(_SET_TYPE_FIELD_DESC);
      oprot.writeSetBegin(new TSet(TType.I64, set_type.length));
      for(var elem63 in set_type) {
        oprot.writeI64(elem63);
      }
      oprot.writeSetEnd();
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("underlying_types_test_args(");

    ret.write("list_type:");
    if(this.list_type == null) {
      ret.write("null");
    } else {
      ret.write(this.list_type);
    }

    ret.write(", ");
    ret.write("set_type:");
    if(this.set_type == null) {
      ret.write("null");
    } else {
      ret.write(this.set_type);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}
class underlying_types_test_result implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("underlying_types_test_result");
  static final TField _SUCCESS_FIELD_DESC = new TField("success", TType.LIST, 0);

  List<int> _success;
  static const int SUCCESS = 0;


  underlying_types_test_result() {
  }

  List<int> get success => this._success;

  set success(List<int> success) {
    this._success = success;
  }

  bool isSetSuccess() => this.success != null;

  unsetSuccess() {
    this.success = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SUCCESS:
        return this.success;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch(fieldID) {
      case SUCCESS:
        if(value == null) {
          unsetSuccess();
        } else {
          this.success = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if the field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch(fieldID) {
      case SUCCESS:
        return isSetSuccess();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while(true) {
      field = iprot.readFieldBegin();
      if(field.type == TType.STOP) {
        break;
      }
      switch(field.id) {
        case SUCCESS:
          if(field.type == TType.LIST) {
            TList elem64 = iprot.readListBegin();
            success = new List<int>();
            for(int elem66 = 0; elem66 < elem64.length; ++elem66) {
              int elem65 = iprot.readI64();
              success.add(elem65);
            }
            iprot.readListEnd();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    if(isSetSuccess() && this.success != null) {
      oprot.writeFieldBegin(_SUCCESS_FIELD_DESC);
      oprot.writeListBegin(new TList(TType.I64, success.length));
      for(var elem67 in success) {
        oprot.writeI64(elem67);
      }
      oprot.writeListEnd();
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("underlying_types_test_result(");

    if(isSetSuccess()) {
      ret.write("success:");
      if(this.success == null) {
        ret.write("null");
      } else {
        ret.write(this.success);
      }
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }
}

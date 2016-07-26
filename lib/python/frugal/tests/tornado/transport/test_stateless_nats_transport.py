# TODO: Remove with 2.0
import mock
import struct

from tornado import concurrent
from tornado.testing import gen_test, AsyncTestCase
from thrift.transport.TTransport import TTransportException

from frugal.exceptions import FExecuteCallbackNotSet
from frugal.tornado.transport import TStatelessNatsTransport


class TestTNatsStatelessTransport(AsyncTestCase):

    def setUp(self):
        self.mock_nats_client = mock.Mock()
        self.subject = "foo"
        self.inbox = "new_inbox"
        super(TestTNatsStatelessTransport, self).setUp()

        self.transport = TStatelessNatsTransport(self.mock_nats_client,
                                                 self.subject,
                                                 self.inbox)

    @mock.patch('frugal.tornado.transport.nats_transport.new_inbox')
    def test_init(self, mock_new_inbox):
        self.assertEquals(self.mock_nats_client, self.transport._nats_client)
        self.assertEquals(self.subject, self.transport._subject)
        self.assertEquals(self.inbox, self.transport._inbox)

        mock_new_inbox.return_value = "asdf"

        transport = TStatelessNatsTransport(self.mock_nats_client,
                                            self.subject)

        mock_new_inbox.assert_called_with()
        self.assertEquals("asdf", transport._inbox)

    @gen_test
    def test_open_throws_nats_not_connected_exception(self):
        self.mock_nats_client.is_connected.return_value = False

        with self.assertRaises(TTransportException) as e:
            yield self.transport.open()
            self.assertEqual(TTransportException.NOT_OPEN, e.type)
            self.assertEqual("NATS not connected.", e.message)

    @gen_test
    def test_open_throws_transport_already_open_exception(self):
        self.mock_nats_client.is_connected.return_value = True
        self.transport._is_open = True

        with self.assertRaises(TTransportException) as e:
            yield self.transport.open()
            self.assertEqual(TTransportException.ALREADY_OPEN, e.type)
            self.assertEqual("NATS transport already open", e.message)

    @gen_test
    def test_open_subscribes_to_new_inbox(self):
        f = concurrent.Future()
        f.set_result(1)
        self.mock_nats_client.subscribe.return_value = f

        yield self.transport.open()

        self.assertEquals(1, self.transport._sub_id)
        self.mock_nats_client.subscribe.assert_called_with(
            "new_inbox", "", self.transport._ttransport_on_message_callback)

    def test_execute_not_set_raises_exception(self):
        self.transport._execute = None

        with self.assertRaises(FExecuteCallbackNotSet):
            self.transport._ttransport_on_message_callback("")

    @gen_test
    def test_close_calls_unsubscribe_and_sets_is_open_to_false(self):
        self.transport._sub_id = 1
        f = concurrent.Future()
        f.set_result(None)
        self.mock_nats_client.unsubscribe.return_value = f

        yield self.transport.close()

        self.mock_nats_client.unsubscribe.assert_called_with(
            self.transport._sub_id)

        self.assertFalse(self.transport._is_open)

    @gen_test
    def test_close_with_no_sub_id_returns_early(self):
        self.transport._sub_id = 1
        f = concurrent.Future()
        f.set_result(None)
        self.mock_nats_client.unsubscribe.return_value = f
        yield self.transport.close()
        self.mock_nats_client.unsubscribe.assert_not_called()

    def test_read_throws_exception(self):
        with self.assertRaises(NotImplementedError):
            self.transport.read(2)

    @gen_test
    def test_write_raises_when_not_connected(self):
        with self.assertRaises(TTransportException) as e:
            yield self.transport.write('test')
            self.assertEquals("Transport not open!", e.message)

    @gen_test
    def test_write_adds_to_write_buffer(self):
        b = bytearray('writetest')
        self.mock_nats_client.is_connected.return_value = True
        self.transport._is_open = True

        yield self.transport.write(b)

        self.assertEquals(b, self.transport._wbuf.getvalue())

    @gen_test
    def test_flush_not_open_raises_exception(self):
        with self.assertRaises(TTransportException) as e:
            yield self.transport.flush()
            self.assertEquals(TTransportException.NOT_OPEN, e.type)
            self.assertEquals("Nats not connected!", e.message)

    @gen_test
    def test_flush_publishes_request_to_inbox(self):
        self.mock_nats_client.is_connected.return_value = True
        self.transport._is_open = True

        b = bytearray('test')
        self.transport._wbuf.write(b)
        frame_length = struct.pack('!I', len(b))

        f = concurrent.Future()
        f.set_result("")
        self.mock_nats_client.publish_request.return_value = f

        yield self.transport.flush()

        self.mock_nats_client.publish_request.assert_called_with(
            self.subject,
            self.inbox,
            frame_length + b
        )
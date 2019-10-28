@JS('capsule')
library interop;

import 'package:js/js.dart';

class Capsule {
  const Capsule();
}

void send(String owner, String module, dynamic message) {
  jsSend(owner, module, message);
}

@JS('send')
external void jsSend(String owner, String module, dynamic message);

void receive(String owner, String module, Function callback) {
  jsReceive(owner, module, allowInterop(callback));
}

@JS('receive')
external void jsReceive(String owner, String module, Function callback);

void cancel(String owner, String module) {
  jsCancel(owner, module);
}

@JS('cancel')
external void jsCancel(String owner, String module);

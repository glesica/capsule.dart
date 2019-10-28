import 'package:js/js.dart';

import 'interop.dart';

@Capsule()
abstract class LeftApi {
  void clear();

  void setLeftText(String text);

  factory LeftApi.local(LeftApi target) {
    return _LeftApiLocal(target);
  }

  factory LeftApi.remote() {
    return _LeftApiRemote();
  }
}

// generated code

class _LeftApiLocal implements LeftApi {
  LeftApi _target;

  _LeftApiLocal(this._target) {
    receive(
      'LeftApi',
      'clear',
      _target.clear,
    );
    receive(
      'LeftApi',
      'setLeftText',
      _target.setLeftText,
    );
  }

  @override
  void clear() {
    _target.clear();
  }

  @override
  void setLeftText(String text) {
    _target.setLeftText(text);
  }
}

class _LeftApiRemote implements LeftApi {
  @override
  void clear() {
    send('LeftApi', 'clear', []);
  }

  @override
  void setLeftText(String text) {
    send('LeftApi', 'setLeftText', [text]);
  }
}

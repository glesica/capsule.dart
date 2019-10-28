import 'dart:async';
import 'dart:html';

import 'left_api.dart';

void main() {
  final container = querySelector('#left');
  final api = LeftApi.local(
    LeftApiImpl(container, 'LEFT'),
  );

  Timer.periodic(Duration(seconds: 6), (_) {
    api.setLeftText('LEFT');
  });
}

class LeftApiImpl implements LeftApi {
  final Element _target;

  String _text;

  LeftApiImpl(this._target, this._text) {
    setLeftText(_text);
  }

  @override
  void clear() {
    setLeftText('');
  }

  @override
  void setLeftText(String text) {
    _target.setInnerHtml(text);
    _text = text;
  }
}

import 'dart:async';
import 'dart:html';

import 'left_api.dart';

void main() {
  final container = querySelector('#right');
  container.appendText('RIGHT');

  final leftApi = LeftApi.remote();
  Timer.periodic(Duration(seconds: 3), (_) {
    leftApi.setLeftText('RIGHT :)');
  });
}

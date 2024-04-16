import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kindergarten_online/core/utils/resources//resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.pencil).existsSync(), isTrue);
  });
}

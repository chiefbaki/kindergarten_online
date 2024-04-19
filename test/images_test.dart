import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kindergarten_online/core/utils/resources//resources.dart';

void main() {
  test('images assets test', () {
    expect(File(Images.area).existsSync(), isTrue);
    expect(File(Images.ava).existsSync(), isTrue);
    expect(File(Images.back).existsSync(), isTrue);
    expect(File(Images.backLogin).existsSync(), isTrue);
    expect(File(Images.bedroom).existsSync(), isTrue);
    expect(File(Images.cab).existsSync(), isTrue);
    expect(File(Images.cab2).existsSync(), isTrue);
    expect(File(Images.camera).existsSync(), isTrue);
    expect(File(Images.chatIcon).existsSync(), isTrue);
    expect(File(Images.check).existsSync(), isTrue);
    expect(File(Images.contactIcon).existsSync(), isTrue);
    expect(File(Images.dropDown).existsSync(), isTrue);
    expect(File(Images.five).existsSync(), isTrue);
    expect(File(Images.four).existsSync(), isTrue);
    expect(File(Images.gamezone).existsSync(), isTrue);
    expect(File(Images.iconRight).existsSync(), isTrue);
    expect(File(Images.iconRight).existsSync(), isTrue);
    expect(File(Images.ideaIcon).existsSync(), isTrue);
    expect(File(Images.img).existsSync(), isTrue);
    expect(File(Images.infoIcon).existsSync(), isTrue);
    expect(File(Images.kitchen).existsSync(), isTrue);
    expect(File(Images.line).existsSync(), isTrue);
    expect(File(Images.newsAva).existsSync(), isTrue);
    expect(File(Images.newsIcon).existsSync(), isTrue);
    expect(File(Images.one).existsSync(), isTrue);
    expect(File(Images.pencil).existsSync(), isTrue);
    expect(File(Images.prodIcon).existsSync(), isTrue);
    expect(File(Images.questionIcon).existsSync(), isTrue);
    expect(File(Images.rectangle).existsSync(), isTrue);
    expect(File(Images.registrBack).existsSync(), isTrue);
    expect(File(Images.scheduleIcon).existsSync(), isTrue);
    expect(File(Images.settingsIcon).existsSync(), isTrue);
    expect(File(Images.six).existsSync(), isTrue);
    expect(File(Images.three).existsSync(), isTrue);
    expect(File(Images.two).existsSync(), isTrue);
    expect(File(Images.uchetIcon).existsSync(), isTrue);
  });
}

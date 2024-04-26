import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:kindergarten_online/core/utils/resources//resources.dart';

void main() {
  test('imgs assets test', () {
    expect(File(Imgs.area).existsSync(), isTrue);
    expect(File(Imgs.ava).existsSync(), isTrue);
    expect(File(Imgs.back).existsSync(), isTrue);
    expect(File(Imgs.backLogin).existsSync(), isTrue);
    expect(File(Imgs.bedroom).existsSync(), isTrue);
    expect(File(Imgs.cab).existsSync(), isTrue);
    expect(File(Imgs.cab2).existsSync(), isTrue);
    expect(File(Imgs.camera).existsSync(), isTrue);
    expect(File(Imgs.chatIcon).existsSync(), isTrue);
    expect(File(Imgs.check).existsSync(), isTrue);
    expect(File(Imgs.contactIcon).existsSync(), isTrue);
    expect(File(Imgs.dropDown).existsSync(), isTrue);
    expect(File(Imgs.five).existsSync(), isTrue);
    expect(File(Imgs.four).existsSync(), isTrue);
    expect(File(Imgs.gamezone).existsSync(), isTrue);
    expect(File(Imgs.iconArrowRight).existsSync(), isTrue);
    expect(File(Imgs.iconRight).existsSync(), isTrue);
    expect(File(Imgs.ideaIcon).existsSync(), isTrue);
    expect(File(Imgs.img).existsSync(), isTrue);
    expect(File(Imgs.infoIcon).existsSync(), isTrue);
    expect(File(Imgs.kitchen).existsSync(), isTrue);
    expect(File(Imgs.line).existsSync(), isTrue);
    expect(File(Imgs.newsAva).existsSync(), isTrue);
    expect(File(Imgs.newsIcon).existsSync(), isTrue);
    expect(File(Imgs.one).existsSync(), isTrue);
    expect(File(Imgs.pencil).existsSync(), isTrue);
    expect(File(Imgs.prodIcon).existsSync(), isTrue);
    expect(File(Imgs.questionIcon).existsSync(), isTrue);
    expect(File(Imgs.rainbow).existsSync(), isTrue);
    expect(File(Imgs.rectangle).existsSync(), isTrue);
    expect(File(Imgs.rectangleAcc).existsSync(), isTrue);
    expect(File(Imgs.registrBack).existsSync(), isTrue);
    expect(File(Imgs.scheduleIcon).existsSync(), isTrue);
    expect(File(Imgs.settingsIcon).existsSync(), isTrue);
    expect(File(Imgs.six).existsSync(), isTrue);
    expect(File(Imgs.three).existsSync(), isTrue);
    expect(File(Imgs.two).existsSync(), isTrue);
    expect(File(Imgs.uchetIcon).existsSync(), isTrue);
  });
}

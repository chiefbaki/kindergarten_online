import 'package:flutter/material.dart';

bool switcher = false;

void checkState(
    {required TextEditingController paramOne,
    required TextEditingController paramTwo,
    required TextEditingController paramThree,
    required void Function(void Function()) setState}) {
  setState(
    () {
      switcher = paramTwo.text.isNotEmpty &&
          paramTwo.text.isNotEmpty &&
          paramThree.text.isNotEmpty;
    },
  );
}

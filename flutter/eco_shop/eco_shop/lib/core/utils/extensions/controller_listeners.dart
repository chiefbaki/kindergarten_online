bool isButtonActive = false;
void checkPassLogin(void Function(void Function() fn) state,
    String controllerOne, String controllerTwo) {
  state(() {
    isButtonActive = (controllerOne.isNotEmpty && controllerOne.length >= 8) &&
        controllerTwo.isNotEmpty;
  });
}

bool switcher = false;
void checkPassRegister(void Function(void Function() fn) state,
    String controllerOne, String controllerTwo) {
  state(() {
    switcher = controllerOne == controllerTwo &&
        controllerOne.length >= 8 &&
        controllerTwo.length >= 8;
  });
}

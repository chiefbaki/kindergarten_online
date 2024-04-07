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

void updateCategoryByIndex(
    {required String productName,
    required void Function(void Function() fn) state,
    required List<String> choiceData,
    required int selectedIndex}) {
  Map<String, String> productCategoryMap = {
    "яблоко": "Fruits",
    "груша": "Fruits",
    "клубника": "Fruits",
    "манго": "Fruits",
    "апельсины": "Fruits",
    "вишня": "Fruits",
    "изюм": "Dried_fruits",
    "помидоры": "Vegetables",
    "огурцы": "Vegetables",
    "лук": "Vegetables",
    "морковь": "Vegetables",
    "перец": "Vegetables",
    "молоко": "Milk_products",
    "йогурт": "Milk_products",
    "кофе": "Tea_Coffee",
    "чай": "Tea_Coffee",
    "укроп": "Greenery",
    "петрушка": "Tea_Coffee",
  };

  productCategoryMap.forEach((key, value) {
    if (productName.toLowerCase().contains(key)) {
      String category = value;
      state(() {
        selectedIndex = choiceData.indexOf(category);
      });
    }
  });
}

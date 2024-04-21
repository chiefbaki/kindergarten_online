import 'package:eco_shop/features/bag/data/models/shopping_card_dto.dart';

abstract interface class ShoppingCardRep {
  Future<ShoppingCardDto> getShoppingCard();
}

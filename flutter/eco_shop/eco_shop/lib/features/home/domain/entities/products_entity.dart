class ProductsEntity {
  final int id;
  final String name;
  final String imageUrl;
  final String description;
  final String category;
  final int price;
  final String quantity;
  ProductsEntity(
      {required this.id,
      required this.name,
      required this.imageUrl,
      required this.description,
      required this.category,
      required this.price,
      required this.quantity});
}

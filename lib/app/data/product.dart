class Product {
  final String name;
  final String imageUrl;
  final double price;
  final double discount;
  final double discountedPrice;
  bool isFavorite;

  Product({
    required this.name,
    required this.imageUrl,
    required this.price,
    required this.discount,
    required this.discountedPrice,
    this.isFavorite = false,
  });
}

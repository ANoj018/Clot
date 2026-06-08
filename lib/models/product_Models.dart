class ProductModels {
  final String image;
  final String title;
  final String price;
  bool isFavorite;

  ProductModels({
    required this.image,
    required this.title,
    required this.price,
    this.isFavorite = false,
  });
}

List<ProductModels> products = [
  ProductModels(
    title: 'Men\'s Harrington Jacket',
    image: 'assets/product-image/jacket.png',
    price: '\$148.00',
  ),
  ProductModels(
    title: 'Max Cirro Men\'s Slides',
    image: 'assets/product-image/sandle.png',
    price: '\$55.00',
  ),
  ProductModels(
    title: 'Men\'s Harrington Jacket',
    image: 'assets/product-image/Men\'s Coaches Jacket.png',
    price: '\$66.97',
  ),
];

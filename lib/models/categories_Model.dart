class CategoriesModel {
  final String image;
  final String title;

  CategoriesModel({required this.image, required this.title});
}

List<CategoriesModel> categories = [
  CategoriesModel(image: 'assets/cate-image/hoodie.png', title: 'hoodie'),
  CategoriesModel(image: 'assets/cate-image/shorts.png', title: 'shorts'),
  CategoriesModel(image: 'assets/cate-image/shoes.png', title: 'shoes'),
  CategoriesModel(image: 'assets/cate-image/bag.jpg', title: 'bag'),
  CategoriesModel(
    image: 'assets/cate-image/sunglass.png',
    title: 'accessories',
  ),
];

class ProductModel {
  String image;
  String name;
  int price;
  int reviewCount;
  double reviewRating;
  bool cart = false;

  ProductModel(
      {required this.image,
      required this.name,
      required this.price,
      required this.reviewCount,
      required this.reviewRating});

  @override
  String toString() {
    return 'ProductModel{image: $image, name: $name, price: $price, reviewCount: $reviewCount, reviewRating: $reviewRating}';
  }
}

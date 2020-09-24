class Product {
  final String id;
  final String name;
  final double price;
  final List images;
  final String dimensions;
  final String description;
  bool isFavorite;

  Product({
    this.id,
    this.name,
    this.price,
    this.images,
    this.dimensions,
    this.description,
    this.isFavorite,
  });
}

class ProductModel {
  String? productName;
  String? productCategory;
  String? pointsEquivalent;
  String? productImage;

  ProductModel(
      {this.pointsEquivalent,
      this.productCategory,
      this.productImage,
      this.productName});

  static ProductModel fromJson(json) => ProductModel(
      productName: json['productName'],
      productCategory: json['productCategory'],
      pointsEquivalent: json['pointsEquivalent'],
      productImage: json['productImage']);
}

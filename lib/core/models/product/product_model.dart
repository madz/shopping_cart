import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.g.dart';

@JsonSerializable()
class ProductModel {
  int productId;
  String name;
  double price;
  String imageUrl;
  String description;
  ProductModel({
    @required this.productId,
    @required this.name,
    @required this.price,
    @required this.imageUrl,
    @required this.description,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$ProductModelToJson(this);
}

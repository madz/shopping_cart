// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductModel _$ProductModelFromJson(Map<String, dynamic> json) {
  return ProductModel(
    productId: json['productId'] as int,
    name: json['name'] as String,
    price: (json['price'] as num)?.toDouble(),
    imageUrl: json['imageUrl'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ProductModelToJson(ProductModel instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'name': instance.name,
      'price': instance.price,
      'imageUrl': instance.imageUrl,
      'description': instance.description,
    };

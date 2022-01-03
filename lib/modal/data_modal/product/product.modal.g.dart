// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.modal.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Product _$ProductFromJson(Map<String, dynamic> json) => Product(
      id: json['id'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
      price: json['price'] as String?,
    );

Map<String, dynamic> _$ProductToJson(Product instance) => <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'price': instance.price,
    };

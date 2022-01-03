import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'product.modal.g.dart';

@JsonSerializable()
class Product extends Equatable {
  final String? id;
  final String? description;
  final String? imageUrl;
  final String? price;

  const Product({
    required this.id,
    required this.description,
    required this.imageUrl,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);

  @override
  List<Object?> get props => [id, description, imageUrl, price];

  @override
  bool? get stringify => true;
}

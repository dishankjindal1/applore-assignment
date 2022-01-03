import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.modal.g.dart';

@JsonSerializable()
class User extends Equatable {
  final String? id;
  final String? name;
  final String? contact;

  const User({
    required this.id,
    required this.name,
    required this.contact,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  @override
  List<Object?> get props => [id, name, contact];

  @override
  bool? get stringify => true;
}

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'user.modal.g.dart';

@JsonSerializable()
class UserModal extends Equatable {
  final String? id;
  final String? name;
  final String? contact;

  const UserModal({
    required this.id,
    required this.name,
    required this.contact,
  });

  factory UserModal.fromJson(Map<String, dynamic> json) => _$UserModalFromJson(json);

  @override
  List<Object?> get props => [id, name, contact];

  @override
  bool? get stringify => true;
}

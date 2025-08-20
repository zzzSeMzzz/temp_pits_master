import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_model.g.dart';

@JsonSerializable()
class AuthModel {
  @JsonKey(name: 'success', defaultValue: false)
  final bool success;
  @JsonKey(name: 'message', defaultValue: '')
  final String? message;
  @JsonKey(name: 'token', defaultValue: '')
  final String token;
  @JsonKey(name: 'firstname', defaultValue: '')
  final String? firstname;
  @JsonKey(name: 'lastname', defaultValue: '')
  final String? lastname;
  @JsonKey(name: 'customer_id', defaultValue: 0)
  final int customerId;

  AuthModel(this.success, this.message, this.token, this.firstname,
      this.lastname, this.customerId);

  factory AuthModel.fromJson(Map<String, dynamic> json) =>
      _$AuthModelFromJson(json);
}
import 'package:json_annotation/json_annotation.dart';
part 'profile.g.dart';

@JsonSerializable()
class ProfileResponse {
  @JsonKey(name: "success")
  bool? success;
  @JsonKey(name: "customer")
  User? user;

  ProfileResponse({
    this.success,
    this.user,
  });

  factory ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileResponseToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: "id")
  int? id;
  @JsonKey(name: "firstname")
  String? firstname;
  @JsonKey(name: "lastname")
  String? lastname;
  @JsonKey(name: "email")
  String? email;
  @JsonKey(name: "phone")
  String? phone;

  User({
    this.id,
    this.firstname,
    this.lastname,
    this.email,
    this.phone,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);

  String fullName() {
    return "$firstname $lastname";
  }
}
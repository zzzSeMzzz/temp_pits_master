

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pits_app/modules/profile/domain/entity/profile_service.dart';

part 'profile_service.g.dart';

@JsonSerializable()
class ProfileServiceModel extends ProfileServiceEntity {
  @JsonKey(name: 'name',defaultValue: '')
  final String name;
  @JsonKey(name: '',defaultValue: 0)
  final int id;

  ProfileServiceModel({
    required this.name,
    required this.id,
  }):super(title: name);


 factory ProfileServiceModel.fromJson(Map<String ,dynamic> json )=>_$ProfileServiceModelFromJson(json);
}

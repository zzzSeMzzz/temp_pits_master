// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProfileServiceModel _$ProfileServiceModelFromJson(Map<String, dynamic> json) =>
    ProfileServiceModel(
      name: json['name'] as String? ?? '',
      id: (json[''] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ProfileServiceModelToJson(
  ProfileServiceModel instance,
) => <String, dynamic>{'name': instance.name, '': instance.id};

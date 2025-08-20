// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthModel _$AuthModelFromJson(Map<String, dynamic> json) => AuthModel(
      json['success'] as bool? ?? false,
      json['message'] as String? ?? '',
      json['token'] as String? ?? '',
      json['firstname'] as String? ?? '',
      json['lastname'] as String? ?? '',
      (json['customer_id'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$AuthModelToJson(AuthModel instance) => <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'token': instance.token,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'customer_id': instance.customerId,
    };

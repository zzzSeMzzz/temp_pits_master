// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_reg_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CareRegRequest _$CareRegRequestFromJson(Map<String, dynamic> json) =>
    CareRegRequest(
      registrationNumber: json['matricula'] as String?,
      model: json['modelo'] as String?,
      customField41: json['custom_field_41'] as String?,
      customField51: (json['custom_field_51'] as num?)?.toInt(),
      custId: (json['cust_id'] as num?)?.toInt(),
      custIdSlug: json['cust_id_slug'] as String?,
      dateStart: json['date_start'] as String?,
    );

Map<String, dynamic> _$CareRegRequestToJson(CareRegRequest instance) =>
    <String, dynamic>{
      'matricula': instance.registrationNumber,
      'modelo': instance.model,
      'custom_field_41': instance.customField41,
      'custom_field_51': instance.customField51,
      'cust_id': instance.custId,
      'cust_id_slug': instance.custIdSlug,
      'date_start': instance.dateStart,
    };

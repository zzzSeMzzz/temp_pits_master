// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service_repair_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceRepairResponse _$ServiceRepairResponseFromJson(
  Map<String, dynamic> json,
) => ServiceRepairResponse(
  success: json['success'] as bool?,
  message: json['message'] as String?,
  proposalId: (json['proposal_id'] as num?)?.toInt(),
  proposalUniqueId: json['proposal_unique_id'] as String?,
  takeCarAccount: json['take_car_account'] as String?,
  servicesCount: (json['services_count'] as num?)?.toInt(),
  filesUploaded: (json['files_uploaded'] as num?)?.toInt(),
  uploadedFiles: json['uploaded_files'] as List<dynamic>?,
);

Map<String, dynamic> _$ServiceRepairResponseToJson(
  ServiceRepairResponse instance,
) => <String, dynamic>{
  'success': instance.success,
  'message': instance.message,
  'proposal_id': instance.proposalId,
  'proposal_unique_id': instance.proposalUniqueId,
  'take_car_account': instance.takeCarAccount,
  'services_count': instance.servicesCount,
  'files_uploaded': instance.filesUploaded,
  'uploaded_files': instance.uploadedFiles,
};

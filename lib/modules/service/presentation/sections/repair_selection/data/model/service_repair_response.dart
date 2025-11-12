import 'package:json_annotation/json_annotation.dart';

part 'service_repair_response.g.dart';

@JsonSerializable()
class ServiceRepairResponse {
  @JsonKey(name: "success")
  bool? success;
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "proposal_id")
  int? proposalId;
  @JsonKey(name: "proposal_unique_id")
  String? proposalUniqueId;
  @JsonKey(name: "take_car_account")
  String? takeCarAccount;
  @JsonKey(name: "services_count")
  int? servicesCount;
  @JsonKey(name: "files_uploaded")
  int? filesUploaded;
  @JsonKey(name: "uploaded_files")
  List<dynamic>? uploadedFiles;

  ServiceRepairResponse({
    this.success,
    this.message,
    this.proposalId,
    this.proposalUniqueId,
    this.takeCarAccount,
    this.servicesCount,
    this.filesUploaded,
    this.uploadedFiles,
  });

  factory ServiceRepairResponse.fromJson(Map<String, dynamic> json) => _$ServiceRepairResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceRepairResponseToJson(this);
}
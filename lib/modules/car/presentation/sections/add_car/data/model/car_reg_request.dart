import 'package:intl/intl.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../../../../../../utils/utils.dart';
part 'car_reg_request.g.dart';

@JsonSerializable()
class CareRegRequest {
  @JsonKey(name: 'matricula')
  String? registrationNumber;
  @JsonKey(name: 'modelo')
  String? model;
  @JsonKey(name: 'custom_field_41')//Color rojo
  String? customField41;
  @JsonKey(name: 'custom_field_51')
  int? customField51;
  @JsonKey(name: 'cust_id', fromJson: intFromAny)
  int? custId;
  @JsonKey(name: 'cust_id_slug', fromJson: intFromAny)
  int? custIdSlug;
  @JsonKey(name: 'date_start')
  String? dateStart;

  CareRegRequest({this.registrationNumber, this.model, this.customField41,
      this.customField51, this.custId, this.custIdSlug, this.dateStart});

  factory CareRegRequest.formNumber(String number) {
    final req = CareRegRequest();
    req.registrationNumber = number;
    req.custId = 1000;//fixme
    req.custIdSlug = 1000;//fixme
    req.dateStart = DateFormat('yyyy-MM-dd').format(DateTime.now());
    return req;
  }


  factory CareRegRequest.fromJson(Map<String, dynamic> json) =>
      _$CareRegRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CareRegRequestToJson(this);
}
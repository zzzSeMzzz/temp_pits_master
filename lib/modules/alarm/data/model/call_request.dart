import 'package:freezed_annotation/freezed_annotation.dart';
part 'call_request.g.dart';

@JsonSerializable()
class CallRequest {
  @JsonKey(name: 'report_id')
  final int? reportId;

  const CallRequest({
    this.reportId,
  });

  factory CallRequest.fromJson(Map<String, dynamic> json) =>
      _$CallRequestFromJson(json);

  Map<String, dynamic> toJson() => _$CallRequestToJson(this);



}
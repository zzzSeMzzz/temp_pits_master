import 'package:freezed_annotation/freezed_annotation.dart';
part 'base_response.g.dart';

@JsonSerializable()
class BaseResponse {
  /*@JsonKey(name: 'success', defaultValue: false)
  final bool? success;*/
  @JsonKey(name: 'error', defaultValue: false)
  final bool? error;
  @JsonKey(name: 'message')
  final String? message;
  @JsonKey(name: 'data')
  final Map<String, dynamic>? data;

  const BaseResponse({
    this.error,
    this.message,
    this.data
  });

  factory BaseResponse.fromJson(Map<String, dynamic> json) =>
      _$BaseResponseFromJson(json);
}
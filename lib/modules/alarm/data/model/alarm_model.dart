import 'package:freezed_annotation/freezed_annotation.dart';
part 'alarm_model.g.dart';

@JsonSerializable()
class AlarmModel {
  /*@JsonKey(name: 'success', defaultValue: false)
  final bool? success;*/
  @JsonKey(name: 'emergency', defaultValue: '')
  final String? emergency;
  @JsonKey(name: 'carStart', defaultValue: true)
  final bool carStart;
  @JsonKey(name: 'notes', defaultValue: '')
  final String? notes;
  @JsonKey(name: 'timestamp')
  final String? timestamp;
  @JsonKey(name: 'lat')
  final double? lat;
  @JsonKey(name: 'lon')
  final double? lon;


  const AlarmModel({
    this.emergency,
    required this.carStart,
    this.notes,
    this.timestamp,
    this.lat,
    this.lon
  });

  factory AlarmModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlarmModelToJson(this);
}
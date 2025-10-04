import 'package:freezed_annotation/freezed_annotation.dart';
part 'alarm_model.g.dart';

@JsonSerializable()
class AlarmModel {
  @JsonKey(name: 'id', defaultValue: '')
  final int? id;
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
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @JsonKey(name: 'updated_at')
  final String? updatedAt;


  const AlarmModel({
    this.id,
    this.emergency,
    required this.carStart,
    this.notes,
    this.timestamp,
    this.lat,
    this.lon,
    this.createdAt,
    this.updatedAt
  });

  factory AlarmModel.fromJson(Map<String, dynamic> json) =>
      _$AlarmModelFromJson(json);

  Map<String, dynamic> toJson() => _$AlarmModelToJson(this);
}
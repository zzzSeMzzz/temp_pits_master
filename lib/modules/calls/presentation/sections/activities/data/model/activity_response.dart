import 'package:pits_app/modules/alarm/data/model/alarm_model.dart';

class ActivityResponse {
  bool? error;
  List<AlarmModel>? data;

  ActivityResponse({this.error, this.data});

  ActivityResponse.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    if (json['data'] != null) {
      data = <AlarmModel>[];
      json['data'].forEach((v) {
        data!.add(AlarmModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
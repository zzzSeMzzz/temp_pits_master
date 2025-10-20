

class CarScanInfoContainer {
  List<CarScanInfo>? results;

  CarScanInfoContainer({this.results});

  CarScanInfoContainer.fromJson(Map<String, dynamic> json) {
    if (json['results'] != null) {
      results = <CarScanInfo>[];
      json['results'].forEach((v) {
        results!.add(CarScanInfo.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}


class CarScanInfo {
  String? plate;

  CarScanInfo({this.plate});

  CarScanInfo.fromJson(Map<String, dynamic> json) {
    plate = json['plate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['plate'] = this.plate;
    return data;
  }
}
class CarRegResponse {
  bool? success;
  String? message;
  int? carId;

  CarRegResponse({this.success, this.message, this.carId});

  CarRegResponse.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    carId = json['car_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['message'] = this.message;
    data['car_id'] = this.carId;
    return data;
  }
}
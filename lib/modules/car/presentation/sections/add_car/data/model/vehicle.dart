import 'package:json_annotation/json_annotation.dart';
part 'vehicle.g.dart';

@JsonSerializable()
class Vehicle {
  @JsonKey(name: 'imagen')
  String? image;
  @JsonKey(name: 'marca')
  String? brand;
  @JsonKey(name: 'modelo')
  String? model;
  @JsonKey(name: 'chasis')
  String? chassis;
  @JsonKey(name: 'año_fabricacion')
  int? yearOfManufacture;
  @JsonKey(name: 'año_matriculacion')
  int? yearOfRegistration;
  @JsonKey(name: 'caballos')
  String? powers;
  @JsonKey(name: 'aceleracion_0_100')
  String? acceleration;
  @JsonKey(name: 'consumo_medio')
  String? averageConsumption;//расход
  @JsonKey(name: 'precio_mercado')
  String? marketPrice;
  @JsonKey(name: 'kilometros')
  int? kilometers;
  @JsonKey(name: 'fabricados')
  String? manufactured;
  @JsonKey(name: 'otros_modelos_motor')
  String? otherEngineModels;
  @JsonKey(name: 'matricula')
  String? registrationNumber;


  Vehicle(this.image, this.brand, this.model, this.chassis,
      this.yearOfManufacture, this.yearOfRegistration, this.powers,
      this.acceleration, this.averageConsumption, this.marketPrice,
      this.kilometers, this.manufactured, this.otherEngineModels,
      this.registrationNumber);

  factory Vehicle.fromJson(Map<String, dynamic> json) =>
      _$VehicleFromJson(json);



}
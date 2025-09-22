// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vehicle _$VehicleFromJson(Map<String, dynamic> json) => Vehicle(
  json['imagen'] as String?,
  json['marca'] as String?,
  json['modelo'] as String?,
  json['chasis'] as String?,
  (json['año_fabricacion'] as num?)?.toInt(),
  (json['año_matriculacion'] as num?)?.toInt(),
  json['caballos'] as String?,
  json['aceleracion_0_100'] as String?,
  json['consumo_medio'] as String?,
  json['precio_mercado'] as String?,
  (json['kilometros'] as num?)?.toInt(),
  json['fabricados'] as String?,
  json['otros_modelos_motor'] as String?,
);

Map<String, dynamic> _$VehicleToJson(Vehicle instance) => <String, dynamic>{
  'imagen': instance.image,
  'marca': instance.brand,
  'modelo': instance.model,
  'chasis': instance.chasis,
  'año_fabricacion': instance.yearOfManufacture,
  'año_matriculacion': instance.yearOfRegistration,
  'caballos': instance.powers,
  'aceleracion_0_100': instance.acceleration,
  'consumo_medio': instance.averageConsumption,
  'precio_mercado': instance.marketPrice,
  'kilometros': instance.kilometers,
  'fabricados': instance.manufactured,
  'otros_modelos_motor': instance.otherEngineModels,
};

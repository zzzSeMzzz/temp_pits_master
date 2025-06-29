// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ServiceModel _$ServiceModelFromJson(Map<String, dynamic> json) => ServiceModel(
      idd: json['id'] as String? ?? '',
      address: json['address'] as String? ?? '',
      lat: json['lat'] as String? ?? '',
      listingId: json['listing_id'] as String? ?? '',
      long: json['lng'] as String? ?? '',
    );

Map<String, dynamic> _$ServiceModelToJson(ServiceModel instance) =>
    <String, dynamic>{
      'id': instance.idd,
      'listing_id': instance.listingId,
      'address': instance.address,
      'lat': instance.lat,
      'lng': instance.long,
    };

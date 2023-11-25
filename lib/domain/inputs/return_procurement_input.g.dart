// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_procurement_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReturnProcurementInputImpl _$$ReturnProcurementInputImplFromJson(
        Map<String, dynamic> json) =>
    _$ReturnProcurementInputImpl(
      imei: json['imeiNumber'] as String,
      physicalCheck: json['physicalCheck'] as int,
      userId: json['userId'] as int,
    );

Map<String, dynamic> _$$ReturnProcurementInputImplToJson(
        _$ReturnProcurementInputImpl instance) =>
    <String, dynamic>{
      'imeiNumber': instance.imei,
      'physicalCheck': instance.physicalCheck,
      'userId': instance.userId,
    };

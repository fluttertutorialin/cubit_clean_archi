// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'return_procurement_input.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReturnProcurementInput _$$_ReturnProcurementInputFromJson(
        Map<String, dynamic> json) =>
    _$_ReturnProcurementInput(
      imei: json['IMEINo'] as String,
      physicalCheck: json['IsPhysicalOK'] as int,
      userId: json['USERID'] as int,
    );

Map<String, dynamic> _$$_ReturnProcurementInputToJson(
        _$_ReturnProcurementInput instance) =>
    <String, dynamic>{
      'IMEINo': instance.imei,
      'IsPhysicalOK': instance.physicalCheck,
      'USERID': instance.userId,
    };

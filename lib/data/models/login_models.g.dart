// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginModels _$$_LoginModelsFromJson(Map<String, dynamic> json) =>
    _$_LoginModels(
      userId: json['USERID'] as int?,
      userName: json['USERNAME'] as String?,
      mobile: json['MOBILENO'] as String?,
    );

Map<String, dynamic> _$$_LoginModelsToJson(_$_LoginModels instance) =>
    <String, dynamic>{
      'USERID': instance.userId,
      'USERNAME': instance.userName,
      'MOBILENO': instance.mobile,
    };

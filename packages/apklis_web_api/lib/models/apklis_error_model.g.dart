// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisErrorModel _$ApklisErrorModelFromJson(Map<String, dynamic> json) {
  return ApklisErrorModel(
    statusCode: json['status_code'] as int,
    statusMessage: json['status_message'] as String,
  );
}

Map<String, dynamic> _$ApklisErrorModelToJson(ApklisErrorModel instance) =>
    <String, dynamic>{
      'status_code': instance.statusCode,
      'status_message': instance.statusMessage,
    };

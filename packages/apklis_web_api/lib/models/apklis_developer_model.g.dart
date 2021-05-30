// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_developer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisDeveloperModel _$ApklisDeveloperModelFromJson(Map<String, dynamic> json) {
  return ApklisDeveloperModel(
    username: json['username'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    fullname: json['fullname'] as String,
    avatar: json['avatar'] as String,
    background: json['background'] as String?,
    apps: json['apps'] as int,
    isActive: json['is_active'] as bool,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$ApklisDeveloperModelToJson(
        ApklisDeveloperModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'fullname': instance.fullname,
      'avatar': instance.avatar,
      'background': instance.background,
      'apps': instance.apps,
      'is_active': instance.isActive,
      'description': instance.description,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisCategoryModel _$ApklisCategoryModelFromJson(Map<String, dynamic> json) {
  return ApklisCategoryModel(
    id: json['id'] as int,
    name: json['name'] as String,
    icon: json['icon'] as String,
    group: json['group'] as String,
    iconUrl: json['icon_url'] as String,
  );
}

Map<String, dynamic> _$ApklisCategoryModelToJson(
        ApklisCategoryModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
      'group': instance.group,
      'icon_url': instance.iconUrl,
    };

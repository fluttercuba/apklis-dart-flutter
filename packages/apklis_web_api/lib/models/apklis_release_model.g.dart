// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_release_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisReleaseModel _$ApklisReleaseModelFromJson(Map<String, dynamic> json) {
  return ApklisReleaseModel(
    abi: (json['abi'] as List<dynamic>)
        .map((e) => ApklisAbiModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    noAbi: json['no_abi'] as bool,
    versionName: json['version_name'] as String,
    packageName: json['package_name'] as String,
    appName: json['app_name'] as String,
    versionSdkName: json['version_sdk_name'] as String,
    versionTargetSdkName: json['version_target_sdk_name'] as String,
    permissions: (json['permissions'] as List<dynamic>)
        .map((e) => ApklisPermissionModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    screenshots: (json['screenshots'] as List<dynamic>)
        .map((e) => ApklisScreenshotModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    changelog: json['changelog'] as String,
    versionCode: json['version_code'] as int,
    published: json['published'] as String,
    sha256: json['sha256'] as String,
    size: json['size'] as String,
    icon: json['icon'] as String,
    public: json['public'] as bool,
    beta: json['beta'] as bool,
    versionSdk: json['version_sdk'] as String,
    versionTargetSdk: json['version_target_sdk'] as String,
    deleted: json['deleted'] as bool,
  );
}

Map<String, dynamic> _$ApklisReleaseModelToJson(ApklisReleaseModel instance) =>
    <String, dynamic>{
      'abi': instance.abi.map((e) => e.toJson()).toList(),
      'no_abi': instance.noAbi,
      'version_name': instance.versionName,
      'package_name': instance.packageName,
      'app_name': instance.appName,
      'version_sdk_name': instance.versionSdkName,
      'version_target_sdk_name': instance.versionTargetSdkName,
      'permissions': instance.permissions.map((e) => e.toJson()).toList(),
      'screenshots': instance.screenshots.map((e) => e.toJson()).toList(),
      'changelog': instance.changelog,
      'version_code': instance.versionCode,
      'published': instance.published,
      'sha256': instance.sha256,
      'size': instance.size,
      'icon': instance.icon,
      'public': instance.public,
      'beta': instance.beta,
      'version_sdk': instance.versionSdk,
      'version_target_sdk': instance.versionTargetSdk,
      'deleted': instance.deleted,
    };

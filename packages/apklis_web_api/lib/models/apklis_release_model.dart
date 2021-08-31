import 'package:apklis_web_api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_release_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisReleaseModel {
  const ApklisReleaseModel({
    required this.abi,
    required this.noAbi,
    required this.versionName,
    required this.packageName,
    required this.appName,
    required this.versionSdkName,
    required this.versionTargetSdkName,
    required this.permissions,
    required this.screenshots,
    required this.changelog,
    required this.versionCode,
    required this.published,
    required this.sha256,
    required this.size,
    required this.icon,
    required this.public,
    required this.beta,
    required this.versionSdk,
    required this.versionTargetSdk,
    required this.deleted,
  });

  final List<ApklisAbiModel> abi;
  @JsonKey(name: 'no_abi')
  final bool noAbi;
  @JsonKey(name: 'version_name')
  final String versionName;
  @JsonKey(name: 'package_name')
  final String packageName;
  @JsonKey(name: 'app_name')
  final String appName;
  @JsonKey(name: 'version_sdk_name')
  final String versionSdkName;
  @JsonKey(name: 'version_target_sdk_name')
  final String versionTargetSdkName;
  final List<ApklisPermissionModel> permissions;
  final List<ApklisScreenshotModel> screenshots;
  final String changelog;
  @JsonKey(name: 'version_code')
  final int versionCode;
  final String published;
  final String sha256;
  final String size;
  final String icon;
  final bool public;
  final bool beta;
  @JsonKey(name: 'version_sdk')
  final String versionSdk;
  @JsonKey(name: 'version_target_sdk')
  final String versionTargetSdk;
  final bool deleted;

  static ApklisReleaseModel fromJson(Map<String, dynamic> json) =>
      _$ApklisReleaseModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisReleaseModelToJson(this);
}

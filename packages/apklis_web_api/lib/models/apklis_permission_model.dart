import 'package:json_annotation/json_annotation.dart';

part 'apklis_permission_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisPermissionModel {
  const ApklisPermissionModel({
    required this.icon,
    required this.description,
    required this.name,
  });

  final String icon;
  final String description;
  final String name;

  static ApklisPermissionModel fromJson(Map<String, dynamic> json) =>
      _$ApklisPermissionModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisPermissionModelToJson(this);
}

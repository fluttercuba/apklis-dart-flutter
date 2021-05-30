import 'package:json_annotation/json_annotation.dart';

part 'apklis_category_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisCategoryModel {
  final int id;
  final String name;
  final String icon;
  final String group;
  @JsonKey(name: 'icon_url')
  final String iconUrl;

  const ApklisCategoryModel({
    required this.id,
    required this.name,
    required this.icon,
    required this.group,
    required this.iconUrl,
  });

  factory ApklisCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisCategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisCategoryModelToJson(this);
}

import 'package:json_annotation/json_annotation.dart';

part 'apklis_developer_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisDeveloperModel {
  const ApklisDeveloperModel({
    required this.username,
    required this.firstName,
    required this.lastName,
    required this.fullname,
    required this.avatar,
    required this.background,
    required this.apps,
    required this.isActive,
    required this.description,
  });

  final String username;
  @JsonKey(name: 'first_name')
  final String firstName;
  @JsonKey(name: 'last_name')
  final String lastName;
  final String fullname;
  final String avatar;
  final String? background;
  final int apps;
  @JsonKey(name: 'is_active')
  final bool isActive;
  final String description;

  static ApklisDeveloperModel fromJson(Map<String, dynamic> json) =>
      _$ApklisDeveloperModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisDeveloperModelToJson(this);
}

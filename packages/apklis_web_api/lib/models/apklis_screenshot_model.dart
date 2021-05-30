import 'package:json_annotation/json_annotation.dart';

part 'apklis_screenshot_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisScreenshotModel {
  final String description;
  @JsonKey(name: 'img')
  final String image;

  const ApklisScreenshotModel({
    required this.description,
    required this.image,
  });

  factory ApklisScreenshotModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisScreenshotModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisScreenshotModelToJson(this);
}

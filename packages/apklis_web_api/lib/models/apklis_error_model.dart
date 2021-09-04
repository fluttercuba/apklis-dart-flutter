import 'package:json_annotation/json_annotation.dart';

part 'apklis_error_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisErrorModel {
  const ApklisErrorModel({
    required this.statusCode,
    required this.statusMessage,
  });

  @JsonKey(name: 'status_code')
  final int statusCode;
  @JsonKey(name: 'status_message')
  final String statusMessage;

  static ApklisErrorModel fromJson(Map<String, dynamic> json) =>
      _$ApklisErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisErrorModelToJson(this);
}

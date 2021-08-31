import 'package:json_annotation/json_annotation.dart';

part 'apklis_abi_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisAbiModel {
  const ApklisAbiModel({
    required this.abi,
  });

  final String abi;

  static ApklisAbiModel fromJson(Map<String, dynamic> json) =>
      _$ApklisAbiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisAbiModelToJson(this);
}

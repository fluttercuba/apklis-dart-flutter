import 'package:json_annotation/json_annotation.dart';

part 'apklis_abi_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisAbiModel {
  final String abi;

  const ApklisAbiModel({
    required this.abi,
  });

  factory ApklisAbiModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisAbiModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisAbiModelToJson(this);
}

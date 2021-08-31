import 'package:apklis_web_api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisModel {
  const ApklisModel({
    required this.count,
    required this.next,
    required this.previous,
    required this.results,
  });

  final int count;
  final String? next;
  final String? previous;
  final List<ApklisItemModel> results;

  static ApklisModel fromJson(Map<String, dynamic> json) =>
      _$ApklisModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisModelToJson(this);
}

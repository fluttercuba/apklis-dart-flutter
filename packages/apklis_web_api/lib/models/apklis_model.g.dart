// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisModel _$ApklisModelFromJson(Map<String, dynamic> json) {
  return ApklisModel(
    count: json['count'] as int,
    next: json['next'] as String?,
    previous: json['previous'] as String?,
    results: (json['results'] as List<dynamic>)
        .map((e) => ApklisItemModel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$ApklisModelToJson(ApklisModel instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results.map((e) => e.toJson()).toList(),
    };

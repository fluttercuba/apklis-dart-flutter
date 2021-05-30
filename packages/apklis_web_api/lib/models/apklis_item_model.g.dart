// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apklis_item_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApklisItemModel _$ApklisItemModelFromJson(Map<String, dynamic> json) {
  return ApklisItemModel(
    icon: json['icon'] as String,
    background: json['background'] as String,
    packageName: json['package_name'] as String,
    name: json['name'] as String,
    videoUrl: json['video_url'] as String,
    videoImg: json['video_img'] as String,
    description: json['description'] as String,
    updated: json['updated'] as String,
    saleCount: json['sale_count'] as int,
    downloadCount: json['download_count'] as int,
    price: (json['price'] as num).toDouble(),
    rating: (json['rating'] as num).toDouble(),
    sponsored: json['sponsored'] as int,
    withDb: json['with_db'] as bool,
    reviewsStar1: json['reviews_star_1'] as int,
    reviewsStar2: json['reviews_star_2'] as int,
    reviewsStar3: json['reviews_star_3'] as int,
    reviewsStar4: json['reviews_star_4'] as int,
    reviewsStar5: json['reviews_star_5'] as int,
    releasesCount: json['releases_count'] as int,
    reviewsCount: json['reviews_count'] as int,
    categories: (json['categories'] as List<dynamic>)
        .map((e) => ApklisCategoryModel.fromJson(e as Map<String, dynamic>))
        .toList(),
    size: json['size'] as int,
    developer: ApklisDeveloperModel.fromJson(
        json['developer'] as Map<String, dynamic>),
    lastRelease: ApklisReleaseModel.fromJson(
        json['last_release'] as Map<String, dynamic>),
    announced: json['announced'] as bool,
  );
}

Map<String, dynamic> _$ApklisItemModelToJson(ApklisItemModel instance) =>
    <String, dynamic>{
      'icon': instance.icon,
      'background': instance.background,
      'package_name': instance.packageName,
      'name': instance.name,
      'video_url': instance.videoUrl,
      'video_img': instance.videoImg,
      'description': instance.description,
      'updated': instance.updated,
      'sale_count': instance.saleCount,
      'download_count': instance.downloadCount,
      'price': instance.price,
      'rating': instance.rating,
      'sponsored': instance.sponsored,
      'with_db': instance.withDb,
      'reviews_star_1': instance.reviewsStar1,
      'reviews_star_2': instance.reviewsStar2,
      'reviews_star_3': instance.reviewsStar3,
      'reviews_star_4': instance.reviewsStar4,
      'reviews_star_5': instance.reviewsStar5,
      'releases_count': instance.releasesCount,
      'reviews_count': instance.reviewsCount,
      'categories': instance.categories.map((e) => e.toJson()).toList(),
      'size': instance.size,
      'developer': instance.developer.toJson(),
      'last_release': instance.lastRelease.toJson(),
      'announced': instance.announced,
    };

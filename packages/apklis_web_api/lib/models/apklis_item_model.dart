import 'package:apklis_web_api/models/models.dart';
import 'package:json_annotation/json_annotation.dart';

part 'apklis_item_model.g.dart';

@JsonSerializable(explicitToJson: true)
class ApklisItemModel {
  final String icon;
  final String background;
  @JsonKey(name: 'package_name')
  final String packageName;
  final String name;
  @JsonKey(name: 'video_url')
  final String videoUrl;
  @JsonKey(name: 'video_img')
  final String videoImg;
  final String description;
  final String updated;
  @JsonKey(name: 'sale_count')
  final int saleCount;
  @JsonKey(name: 'download_count')
  final int downloadCount;
  final double price;
  final double rating;
  final int sponsored;
  @JsonKey(name: 'with_db')
  final bool withDb;
  @JsonKey(name: 'reviews_star_1')
  final int reviewsStar1;
  @JsonKey(name: 'reviews_star_2')
  final int reviewsStar2;
  @JsonKey(name: 'reviews_star_3')
  final int reviewsStar3;
  @JsonKey(name: 'reviews_star_4')
  final int reviewsStar4;
  @JsonKey(name: 'reviews_star_5')
  final int reviewsStar5;
  @JsonKey(name: 'releases_count')
  final int releasesCount;
  @JsonKey(name: 'reviews_count')
  final int reviewsCount;
  final List<ApklisCategoryModel> categories;
  final int size;
  final ApklisDeveloperModel developer;
  @JsonKey(name: 'last_release')
  final ApklisReleaseModel lastRelease;
  final bool announced;

  const ApklisItemModel({
    required this.icon,
    required this.background,
    required this.packageName,
    required this.name,
    required this.videoUrl,
    required this.videoImg,
    required this.description,
    required this.updated,
    required this.saleCount,
    required this.downloadCount,
    required this.price,
    required this.rating,
    required this.sponsored,
    required this.withDb,
    required this.reviewsStar1,
    required this.reviewsStar2,
    required this.reviewsStar3,
    required this.reviewsStar4,
    required this.reviewsStar5,
    required this.releasesCount,
    required this.reviewsCount,
    required this.categories,
    required this.size,
    required this.developer,
    required this.lastRelease,
    required this.announced,
  });

  factory ApklisItemModel.fromJson(Map<String, dynamic> json) =>
      _$ApklisItemModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApklisItemModelToJson(this);
}

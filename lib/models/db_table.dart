import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_table.freezed.dart';
part 'db_table.g.dart';

@freezed
class MyBrand with _$MyBrand {
  const factory MyBrand({
    required int id,
    required String brand,
    @Default('') String kana,
    @Default('') String brewery,
    @Default('') String area,
    @Default(0.0) double gorgeous,
    @Default(0.0) double mellow,
    @Default(0.0) double profound,
    @Default(0.0) double clam,
    @Default(0.0) double dry,
    @Default(0.0) double nimble,
    @Default('') String memo,
  }) = _MyBrand;

  factory MyBrand.fromJson(Map<String, dynamic> json) =>
      _$MyBrandFromJson(json);
}

@freezed
class MyTag with _$MyTag {
  const factory MyTag({
    required int id,
    required String name,
  }) = _MyTag;

  factory MyTag.fromJson(Map<String, dynamic> json) => _$MyTagFromJson(json);
}

@freezed
class MyImage with _$MyImage {
  const factory MyImage({
    required int id,
    required int brandId,
    required String imagePath,
  }) = _MyImage;

  factory MyImage.fromJson(Map<String, dynamic> json) =>
      _$MyImageFromJson(json);
}

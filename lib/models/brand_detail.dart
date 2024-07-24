import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:japanese_sake_app/models/api_response.dart';

part 'brand_detail.freezed.dart';
part 'brand_detail.g.dart';

@freezed
class BrandDetail with _$BrandDetail {
  const factory BrandDetail({
    required int id,
    required String brand,
    @Default('') String brewery,
    @Default('') String area,
    FlavorChart? chart,
    BrandFlavorTag? tags,
  }) = _BrandDetail;

  factory BrandDetail.fromJson(Map<String, dynamic> json) =>
      _$BrandDetailFromJson(json);
}

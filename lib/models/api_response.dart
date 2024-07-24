import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_response.freezed.dart';
part 'api_response.g.dart';

@freezed
class Area with _$Area {
  const factory Area({
    required int id,
    required String name,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}

@freezed
class Brand with _$Brand {
  const factory Brand({
    required int id,
    required String name,
    int? breweryId,
  }) = _Brand;

  factory Brand.fromJson(Map<String, dynamic> json) => _$BrandFromJson(json);
}

@freezed
class Brewery with _$Brewery {
  const factory Brewery({
    required int id,
    required String name,
    required int areaId,
  }) = _Brewery;

  factory Brewery.fromJson(Map<String, dynamic> json) =>
      _$BreweryFromJson(json);
}

@freezed
class RankingItem with _$RankingItem {
  const factory RankingItem({
    required int rank,
    required double score,
    required int brandId,
  }) = _RankingItem;

  factory RankingItem.fromJson(Map<String, dynamic> json) =>
      _$RankingItemFromJson(json);
}

@freezed
class AreaRanking with _$AreaRanking {
  const factory AreaRanking({
    required int areaId,
    required List<RankingItem> ranking,
  }) = _AreaRanking;

  factory AreaRanking.fromJson(Map<String, dynamic> json) =>
      _$AreaRankingFromJson(json);
}

@freezed
class FlavorChart with _$FlavorChart {
  const factory FlavorChart({
    int? brandId,
    @Default(0) double f1,
    @Default(0) double f2,
    @Default(0) double f3,
    @Default(0) double f4,
    @Default(0) double f5,
    @Default(0) double f6,
  }) = _FlavorChart;

  factory FlavorChart.fromJson(Map<String, dynamic> json) =>
      _$FlavorChartFromJson(json);
}

@freezed
class FlavorTag with _$FlavorTag {
  const factory FlavorTag({
    required int id,
    String? name,
  }) = _FlavorTag;

  factory FlavorTag.fromJson(Map<String, dynamic> json) =>
      _$FlavorTagFromJson(json);
}

@freezed
class BrandFlavorTag with _$BrandFlavorTag {
  const factory BrandFlavorTag({
    required int brandId,
    required List<int> tagIds,
  }) = _BrandFlavorTag;

  factory BrandFlavorTag.fromJson(Map<String, dynamic> json) =>
      _$BrandFlavorTagFromJson(json);
}

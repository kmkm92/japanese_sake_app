// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AreaImpl _$$AreaImplFromJson(Map<String, dynamic> json) => _$AreaImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AreaImplToJson(_$AreaImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$BrandImpl _$$BrandImplFromJson(Map<String, dynamic> json) => _$BrandImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      breweryId: (json['breweryId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$BrandImplToJson(_$BrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'breweryId': instance.breweryId,
    };

_$BreweryImpl _$$BreweryImplFromJson(Map<String, dynamic> json) =>
    _$BreweryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      areaId: (json['areaId'] as num).toInt(),
    );

Map<String, dynamic> _$$BreweryImplToJson(_$BreweryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'areaId': instance.areaId,
    };

_$RankingItemImpl _$$RankingItemImplFromJson(Map<String, dynamic> json) =>
    _$RankingItemImpl(
      rank: (json['rank'] as num).toInt(),
      score: (json['score'] as num).toDouble(),
      brandId: (json['brandId'] as num).toInt(),
    );

Map<String, dynamic> _$$RankingItemImplToJson(_$RankingItemImpl instance) =>
    <String, dynamic>{
      'rank': instance.rank,
      'score': instance.score,
      'brandId': instance.brandId,
    };

_$AreaRankingImpl _$$AreaRankingImplFromJson(Map<String, dynamic> json) =>
    _$AreaRankingImpl(
      areaId: (json['areaId'] as num).toInt(),
      ranking: (json['ranking'] as List<dynamic>)
          .map((e) => RankingItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AreaRankingImplToJson(_$AreaRankingImpl instance) =>
    <String, dynamic>{
      'areaId': instance.areaId,
      'ranking': instance.ranking,
    };

_$FlavorChartImpl _$$FlavorChartImplFromJson(Map<String, dynamic> json) =>
    _$FlavorChartImpl(
      brandId: (json['brandId'] as num?)?.toInt(),
      f1: (json['f1'] as num?)?.toDouble() ?? 0,
      f2: (json['f2'] as num?)?.toDouble() ?? 0,
      f3: (json['f3'] as num?)?.toDouble() ?? 0,
      f4: (json['f4'] as num?)?.toDouble() ?? 0,
      f5: (json['f5'] as num?)?.toDouble() ?? 0,
      f6: (json['f6'] as num?)?.toDouble() ?? 0,
    );

Map<String, dynamic> _$$FlavorChartImplToJson(_$FlavorChartImpl instance) =>
    <String, dynamic>{
      'brandId': instance.brandId,
      'f1': instance.f1,
      'f2': instance.f2,
      'f3': instance.f3,
      'f4': instance.f4,
      'f5': instance.f5,
      'f6': instance.f6,
    };

_$FlavorTagImpl _$$FlavorTagImplFromJson(Map<String, dynamic> json) =>
    _$FlavorTagImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$FlavorTagImplToJson(_$FlavorTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$BrandFlavorTagImpl _$$BrandFlavorTagImplFromJson(Map<String, dynamic> json) =>
    _$BrandFlavorTagImpl(
      brandId: (json['brandId'] as num).toInt(),
      tagIds: (json['tagIds'] as List<dynamic>)
          .map((e) => (e as num).toInt())
          .toList(),
    );

Map<String, dynamic> _$$BrandFlavorTagImplToJson(
        _$BrandFlavorTagImpl instance) =>
    <String, dynamic>{
      'brandId': instance.brandId,
      'tagIds': instance.tagIds,
    };

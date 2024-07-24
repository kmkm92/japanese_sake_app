// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'brand_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BrandDetailImpl _$$BrandDetailImplFromJson(Map<String, dynamic> json) =>
    _$BrandDetailImpl(
      id: (json['id'] as num).toInt(),
      brand: json['brand'] as String,
      brewery: json['brewery'] as String? ?? '',
      area: json['area'] as String? ?? '',
      chart: json['chart'] == null
          ? null
          : FlavorChart.fromJson(json['chart'] as Map<String, dynamic>),
      tags: json['tags'] == null
          ? null
          : BrandFlavorTag.fromJson(json['tags'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$BrandDetailImplToJson(_$BrandDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'brewery': instance.brewery,
      'area': instance.area,
      'chart': instance.chart,
      'tags': instance.tags,
    };

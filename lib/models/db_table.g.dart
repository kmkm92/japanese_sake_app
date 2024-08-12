// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBrandImpl _$$MyBrandImplFromJson(Map<String, dynamic> json) =>
    _$MyBrandImpl(
      id: (json['id'] as num).toInt(),
      brand: json['brand'] as String,
      kana: json['kana'] as String? ?? '',
      brewery: json['brewery'] as String? ?? '',
      area: json['area'] as String? ?? '',
      gorgeous: (json['gorgeous'] as num?)?.toDouble() ?? 0.0,
      mellow: (json['mellow'] as num?)?.toDouble() ?? 0.0,
      profound: (json['profound'] as num?)?.toDouble() ?? 0.0,
      clam: (json['clam'] as num?)?.toDouble() ?? 0.0,
      dry: (json['dry'] as num?)?.toDouble() ?? 0.0,
      nimble: (json['nimble'] as num?)?.toDouble() ?? 0.0,
      memo: json['memo'] as String? ?? '',
    );

Map<String, dynamic> _$$MyBrandImplToJson(_$MyBrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'kana': instance.kana,
      'brewery': instance.brewery,
      'area': instance.area,
      'gorgeous': instance.gorgeous,
      'mellow': instance.mellow,
      'profound': instance.profound,
      'clam': instance.clam,
      'dry': instance.dry,
      'nimble': instance.nimble,
      'memo': instance.memo,
    };

_$MyTagImpl _$$MyTagImplFromJson(Map<String, dynamic> json) => _$MyTagImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$$MyTagImplToJson(_$MyTagImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };

_$MyImageImpl _$$MyImageImplFromJson(Map<String, dynamic> json) =>
    _$MyImageImpl(
      id: (json['id'] as num).toInt(),
      brandId: (json['brandId'] as num).toInt(),
      imagePath: json['imagePath'] as String,
    );

Map<String, dynamic> _$$MyImageImplToJson(_$MyImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandId': instance.brandId,
      'imagePath': instance.imagePath,
    };

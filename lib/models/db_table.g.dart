// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_table.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyBrandImpl _$$MyBrandImplFromJson(Map<String, dynamic> json) =>
    _$MyBrandImpl(
      id: (json['id'] as num).toInt(),
      brand: json['brand'] as String,
      subName: json['subName'] as String? ?? '',
      kana: json['kana'] as String? ?? '',
      brewery: json['brewery'] as String? ?? '',
      area: json['area'] as String? ?? '',
      gorgeous: (json['gorgeous'] as num?)?.toDouble() ?? 0.0,
      mellow: (json['mellow'] as num?)?.toDouble() ?? 0.0,
      profound: (json['profound'] as num?)?.toDouble() ?? 0.0,
      clam: (json['clam'] as num?)?.toDouble() ?? 0.0,
      dry: (json['dry'] as num?)?.toDouble() ?? 0.0,
      nimble: (json['nimble'] as num?)?.toDouble() ?? 0.0,
      count: (json['count'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? '',
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      favorite: json['favorite'] as bool? ?? false,
    );

Map<String, dynamic> _$$MyBrandImplToJson(_$MyBrandImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'subName': instance.subName,
      'kana': instance.kana,
      'brewery': instance.brewery,
      'area': instance.area,
      'gorgeous': instance.gorgeous,
      'mellow': instance.mellow,
      'profound': instance.profound,
      'clam': instance.clam,
      'dry': instance.dry,
      'nimble': instance.nimble,
      'count': instance.count,
      'type': instance.type,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'favorite': instance.favorite,
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

_$MyMemoImpl _$$MyMemoImplFromJson(Map<String, dynamic> json) => _$MyMemoImpl(
      id: (json['id'] as num).toInt(),
      brandId: (json['brandId'] as num).toInt(),
      title: json['title'] as String,
      memo: json['memo'] as String? ?? '',
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$MyMemoImplToJson(_$MyMemoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brandId': instance.brandId,
      'title': instance.title,
      'memo': instance.memo,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
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

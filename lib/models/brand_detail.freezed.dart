// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BrandDetail _$BrandDetailFromJson(Map<String, dynamic> json) {
  return _BrandDetail.fromJson(json);
}

/// @nodoc
mixin _$BrandDetail {
  int get id => throw _privateConstructorUsedError;
  String get brand => throw _privateConstructorUsedError;
  String get brewery => throw _privateConstructorUsedError;
  String get area => throw _privateConstructorUsedError;
  FlavorChart? get chart => throw _privateConstructorUsedError;
  BrandFlavorTag? get tags => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandDetailCopyWith<BrandDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandDetailCopyWith<$Res> {
  factory $BrandDetailCopyWith(
          BrandDetail value, $Res Function(BrandDetail) then) =
      _$BrandDetailCopyWithImpl<$Res, BrandDetail>;
  @useResult
  $Res call(
      {int id,
      String brand,
      String brewery,
      String area,
      FlavorChart? chart,
      BrandFlavorTag? tags});

  $FlavorChartCopyWith<$Res>? get chart;
  $BrandFlavorTagCopyWith<$Res>? get tags;
}

/// @nodoc
class _$BrandDetailCopyWithImpl<$Res, $Val extends BrandDetail>
    implements $BrandDetailCopyWith<$Res> {
  _$BrandDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? brewery = null,
    Object? area = null,
    Object? chart = freezed,
    Object? tags = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      brewery: null == brewery
          ? _value.brewery
          : brewery // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      chart: freezed == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as FlavorChart?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as BrandFlavorTag?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlavorChartCopyWith<$Res>? get chart {
    if (_value.chart == null) {
      return null;
    }

    return $FlavorChartCopyWith<$Res>(_value.chart!, (value) {
      return _then(_value.copyWith(chart: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BrandFlavorTagCopyWith<$Res>? get tags {
    if (_value.tags == null) {
      return null;
    }

    return $BrandFlavorTagCopyWith<$Res>(_value.tags!, (value) {
      return _then(_value.copyWith(tags: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BrandDetailImplCopyWith<$Res>
    implements $BrandDetailCopyWith<$Res> {
  factory _$$BrandDetailImplCopyWith(
          _$BrandDetailImpl value, $Res Function(_$BrandDetailImpl) then) =
      __$$BrandDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String brand,
      String brewery,
      String area,
      FlavorChart? chart,
      BrandFlavorTag? tags});

  @override
  $FlavorChartCopyWith<$Res>? get chart;
  @override
  $BrandFlavorTagCopyWith<$Res>? get tags;
}

/// @nodoc
class __$$BrandDetailImplCopyWithImpl<$Res>
    extends _$BrandDetailCopyWithImpl<$Res, _$BrandDetailImpl>
    implements _$$BrandDetailImplCopyWith<$Res> {
  __$$BrandDetailImplCopyWithImpl(
      _$BrandDetailImpl _value, $Res Function(_$BrandDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? brand = null,
    Object? brewery = null,
    Object? area = null,
    Object? chart = freezed,
    Object? tags = freezed,
  }) {
    return _then(_$BrandDetailImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      brand: null == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String,
      brewery: null == brewery
          ? _value.brewery
          : brewery // ignore: cast_nullable_to_non_nullable
              as String,
      area: null == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String,
      chart: freezed == chart
          ? _value.chart
          : chart // ignore: cast_nullable_to_non_nullable
              as FlavorChart?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as BrandFlavorTag?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandDetailImpl implements _BrandDetail {
  const _$BrandDetailImpl(
      {required this.id,
      required this.brand,
      this.brewery = '',
      this.area = '',
      this.chart,
      this.tags});

  factory _$BrandDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandDetailImplFromJson(json);

  @override
  final int id;
  @override
  final String brand;
  @override
  @JsonKey()
  final String brewery;
  @override
  @JsonKey()
  final String area;
  @override
  final FlavorChart? chart;
  @override
  final BrandFlavorTag? tags;

  @override
  String toString() {
    return 'BrandDetail(id: $id, brand: $brand, brewery: $brewery, area: $area, chart: $chart, tags: $tags)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandDetailImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.brewery, brewery) || other.brewery == brewery) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.chart, chart) || other.chart == chart) &&
            (identical(other.tags, tags) || other.tags == tags));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, brand, brewery, area, chart, tags);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandDetailImplCopyWith<_$BrandDetailImpl> get copyWith =>
      __$$BrandDetailImplCopyWithImpl<_$BrandDetailImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandDetailImplToJson(
      this,
    );
  }
}

abstract class _BrandDetail implements BrandDetail {
  const factory _BrandDetail(
      {required final int id,
      required final String brand,
      final String brewery,
      final String area,
      final FlavorChart? chart,
      final BrandFlavorTag? tags}) = _$BrandDetailImpl;

  factory _BrandDetail.fromJson(Map<String, dynamic> json) =
      _$BrandDetailImpl.fromJson;

  @override
  int get id;
  @override
  String get brand;
  @override
  String get brewery;
  @override
  String get area;
  @override
  FlavorChart? get chart;
  @override
  BrandFlavorTag? get tags;
  @override
  @JsonKey(ignore: true)
  _$$BrandDetailImplCopyWith<_$BrandDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

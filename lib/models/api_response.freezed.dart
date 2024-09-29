// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Area _$AreaFromJson(Map<String, dynamic> json) {
  return _Area.fromJson(json);
}

/// @nodoc
mixin _$Area {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaCopyWith<Area> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaCopyWith<$Res> {
  factory $AreaCopyWith(Area value, $Res Function(Area) then) =
      _$AreaCopyWithImpl<$Res, Area>;
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class _$AreaCopyWithImpl<$Res, $Val extends Area>
    implements $AreaCopyWith<$Res> {
  _$AreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaImplCopyWith<$Res> implements $AreaCopyWith<$Res> {
  factory _$$AreaImplCopyWith(
          _$AreaImpl value, $Res Function(_$AreaImpl) then) =
      __$$AreaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name});
}

/// @nodoc
class __$$AreaImplCopyWithImpl<$Res>
    extends _$AreaCopyWithImpl<$Res, _$AreaImpl>
    implements _$$AreaImplCopyWith<$Res> {
  __$$AreaImplCopyWithImpl(_$AreaImpl _value, $Res Function(_$AreaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$AreaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaImpl implements _Area {
  const _$AreaImpl({required this.id, required this.name});

  factory _$AreaImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaImplFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'Area(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      __$$AreaImplCopyWithImpl<_$AreaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaImplToJson(
      this,
    );
  }
}

abstract class _Area implements Area {
  const factory _Area({required final int id, required final String name}) =
      _$AreaImpl;

  factory _Area.fromJson(Map<String, dynamic> json) = _$AreaImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$AreaImplCopyWith<_$AreaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brand _$BrandFromJson(Map<String, dynamic> json) {
  return _Brand.fromJson(json);
}

/// @nodoc
mixin _$Brand {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int? get breweryId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandCopyWith<Brand> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandCopyWith<$Res> {
  factory $BrandCopyWith(Brand value, $Res Function(Brand) then) =
      _$BrandCopyWithImpl<$Res, Brand>;
  @useResult
  $Res call({int id, String name, int? breweryId});
}

/// @nodoc
class _$BrandCopyWithImpl<$Res, $Val extends Brand>
    implements $BrandCopyWith<$Res> {
  _$BrandCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breweryId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breweryId: freezed == breweryId
          ? _value.breweryId
          : breweryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandImplCopyWith<$Res> implements $BrandCopyWith<$Res> {
  factory _$$BrandImplCopyWith(
          _$BrandImpl value, $Res Function(_$BrandImpl) then) =
      __$$BrandImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int? breweryId});
}

/// @nodoc
class __$$BrandImplCopyWithImpl<$Res>
    extends _$BrandCopyWithImpl<$Res, _$BrandImpl>
    implements _$$BrandImplCopyWith<$Res> {
  __$$BrandImplCopyWithImpl(
      _$BrandImpl _value, $Res Function(_$BrandImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? breweryId = freezed,
  }) {
    return _then(_$BrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      breweryId: freezed == breweryId
          ? _value.breweryId
          : breweryId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandImpl implements _Brand {
  const _$BrandImpl({required this.id, required this.name, this.breweryId});

  factory _$BrandImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int? breweryId;

  @override
  String toString() {
    return 'Brand(id: $id, name: $name, breweryId: $breweryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.breweryId, breweryId) ||
                other.breweryId == breweryId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, breweryId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      __$$BrandImplCopyWithImpl<_$BrandImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandImplToJson(
      this,
    );
  }
}

abstract class _Brand implements Brand {
  const factory _Brand(
      {required final int id,
      required final String name,
      final int? breweryId}) = _$BrandImpl;

  factory _Brand.fromJson(Map<String, dynamic> json) = _$BrandImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int? get breweryId;
  @override
  @JsonKey(ignore: true)
  _$$BrandImplCopyWith<_$BrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Brewery _$BreweryFromJson(Map<String, dynamic> json) {
  return _Brewery.fromJson(json);
}

/// @nodoc
mixin _$Brewery {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BreweryCopyWith<Brewery> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BreweryCopyWith<$Res> {
  factory $BreweryCopyWith(Brewery value, $Res Function(Brewery) then) =
      _$BreweryCopyWithImpl<$Res, Brewery>;
  @useResult
  $Res call({int id, String name, int areaId});
}

/// @nodoc
class _$BreweryCopyWithImpl<$Res, $Val extends Brewery>
    implements $BreweryCopyWith<$Res> {
  _$BreweryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BreweryImplCopyWith<$Res> implements $BreweryCopyWith<$Res> {
  factory _$$BreweryImplCopyWith(
          _$BreweryImpl value, $Res Function(_$BreweryImpl) then) =
      __$$BreweryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, int areaId});
}

/// @nodoc
class __$$BreweryImplCopyWithImpl<$Res>
    extends _$BreweryCopyWithImpl<$Res, _$BreweryImpl>
    implements _$$BreweryImplCopyWith<$Res> {
  __$$BreweryImplCopyWithImpl(
      _$BreweryImpl _value, $Res Function(_$BreweryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? areaId = null,
  }) {
    return _then(_$BreweryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BreweryImpl implements _Brewery {
  const _$BreweryImpl(
      {required this.id, required this.name, required this.areaId});

  factory _$BreweryImpl.fromJson(Map<String, dynamic> json) =>
      _$$BreweryImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int areaId;

  @override
  String toString() {
    return 'Brewery(id: $id, name: $name, areaId: $areaId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BreweryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BreweryImplCopyWith<_$BreweryImpl> get copyWith =>
      __$$BreweryImplCopyWithImpl<_$BreweryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BreweryImplToJson(
      this,
    );
  }
}

abstract class _Brewery implements Brewery {
  const factory _Brewery(
      {required final int id,
      required final String name,
      required final int areaId}) = _$BreweryImpl;

  factory _Brewery.fromJson(Map<String, dynamic> json) = _$BreweryImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$BreweryImplCopyWith<_$BreweryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RankingItem _$RankingItemFromJson(Map<String, dynamic> json) {
  return _RankingItem.fromJson(json);
}

/// @nodoc
mixin _$RankingItem {
  int get rank => throw _privateConstructorUsedError;
  double get score => throw _privateConstructorUsedError;
  int get brandId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RankingItemCopyWith<RankingItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RankingItemCopyWith<$Res> {
  factory $RankingItemCopyWith(
          RankingItem value, $Res Function(RankingItem) then) =
      _$RankingItemCopyWithImpl<$Res, RankingItem>;
  @useResult
  $Res call({int rank, double score, int brandId});
}

/// @nodoc
class _$RankingItemCopyWithImpl<$Res, $Val extends RankingItem>
    implements $RankingItemCopyWith<$Res> {
  _$RankingItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? score = null,
    Object? brandId = null,
  }) {
    return _then(_value.copyWith(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RankingItemImplCopyWith<$Res>
    implements $RankingItemCopyWith<$Res> {
  factory _$$RankingItemImplCopyWith(
          _$RankingItemImpl value, $Res Function(_$RankingItemImpl) then) =
      __$$RankingItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int rank, double score, int brandId});
}

/// @nodoc
class __$$RankingItemImplCopyWithImpl<$Res>
    extends _$RankingItemCopyWithImpl<$Res, _$RankingItemImpl>
    implements _$$RankingItemImplCopyWith<$Res> {
  __$$RankingItemImplCopyWithImpl(
      _$RankingItemImpl _value, $Res Function(_$RankingItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rank = null,
    Object? score = null,
    Object? brandId = null,
  }) {
    return _then(_$RankingItemImpl(
      rank: null == rank
          ? _value.rank
          : rank // ignore: cast_nullable_to_non_nullable
              as int,
      score: null == score
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as double,
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RankingItemImpl implements _RankingItem {
  const _$RankingItemImpl(
      {required this.rank, required this.score, required this.brandId});

  factory _$RankingItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$RankingItemImplFromJson(json);

  @override
  final int rank;
  @override
  final double score;
  @override
  final int brandId;

  @override
  String toString() {
    return 'RankingItem(rank: $rank, score: $score, brandId: $brandId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RankingItemImpl &&
            (identical(other.rank, rank) || other.rank == rank) &&
            (identical(other.score, score) || other.score == score) &&
            (identical(other.brandId, brandId) || other.brandId == brandId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rank, score, brandId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RankingItemImplCopyWith<_$RankingItemImpl> get copyWith =>
      __$$RankingItemImplCopyWithImpl<_$RankingItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RankingItemImplToJson(
      this,
    );
  }
}

abstract class _RankingItem implements RankingItem {
  const factory _RankingItem(
      {required final int rank,
      required final double score,
      required final int brandId}) = _$RankingItemImpl;

  factory _RankingItem.fromJson(Map<String, dynamic> json) =
      _$RankingItemImpl.fromJson;

  @override
  int get rank;
  @override
  double get score;
  @override
  int get brandId;
  @override
  @JsonKey(ignore: true)
  _$$RankingItemImplCopyWith<_$RankingItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AreaRanking _$AreaRankingFromJson(Map<String, dynamic> json) {
  return _AreaRanking.fromJson(json);
}

/// @nodoc
mixin _$AreaRanking {
  int get areaId => throw _privateConstructorUsedError;
  List<RankingItem> get ranking => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AreaRankingCopyWith<AreaRanking> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AreaRankingCopyWith<$Res> {
  factory $AreaRankingCopyWith(
          AreaRanking value, $Res Function(AreaRanking) then) =
      _$AreaRankingCopyWithImpl<$Res, AreaRanking>;
  @useResult
  $Res call({int areaId, List<RankingItem> ranking});
}

/// @nodoc
class _$AreaRankingCopyWithImpl<$Res, $Val extends AreaRanking>
    implements $AreaRankingCopyWith<$Res> {
  _$AreaRankingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? ranking = null,
  }) {
    return _then(_value.copyWith(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      ranking: null == ranking
          ? _value.ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AreaRankingImplCopyWith<$Res>
    implements $AreaRankingCopyWith<$Res> {
  factory _$$AreaRankingImplCopyWith(
          _$AreaRankingImpl value, $Res Function(_$AreaRankingImpl) then) =
      __$$AreaRankingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int areaId, List<RankingItem> ranking});
}

/// @nodoc
class __$$AreaRankingImplCopyWithImpl<$Res>
    extends _$AreaRankingCopyWithImpl<$Res, _$AreaRankingImpl>
    implements _$$AreaRankingImplCopyWith<$Res> {
  __$$AreaRankingImplCopyWithImpl(
      _$AreaRankingImpl _value, $Res Function(_$AreaRankingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? areaId = null,
    Object? ranking = null,
  }) {
    return _then(_$AreaRankingImpl(
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
      ranking: null == ranking
          ? _value._ranking
          : ranking // ignore: cast_nullable_to_non_nullable
              as List<RankingItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AreaRankingImpl implements _AreaRanking {
  const _$AreaRankingImpl(
      {required this.areaId, required final List<RankingItem> ranking})
      : _ranking = ranking;

  factory _$AreaRankingImpl.fromJson(Map<String, dynamic> json) =>
      _$$AreaRankingImplFromJson(json);

  @override
  final int areaId;
  final List<RankingItem> _ranking;
  @override
  List<RankingItem> get ranking {
    if (_ranking is EqualUnmodifiableListView) return _ranking;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ranking);
  }

  @override
  String toString() {
    return 'AreaRanking(areaId: $areaId, ranking: $ranking)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AreaRankingImpl &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            const DeepCollectionEquality().equals(other._ranking, _ranking));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, areaId, const DeepCollectionEquality().hash(_ranking));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AreaRankingImplCopyWith<_$AreaRankingImpl> get copyWith =>
      __$$AreaRankingImplCopyWithImpl<_$AreaRankingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AreaRankingImplToJson(
      this,
    );
  }
}

abstract class _AreaRanking implements AreaRanking {
  const factory _AreaRanking(
      {required final int areaId,
      required final List<RankingItem> ranking}) = _$AreaRankingImpl;

  factory _AreaRanking.fromJson(Map<String, dynamic> json) =
      _$AreaRankingImpl.fromJson;

  @override
  int get areaId;
  @override
  List<RankingItem> get ranking;
  @override
  @JsonKey(ignore: true)
  _$$AreaRankingImplCopyWith<_$AreaRankingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorChart _$FlavorChartFromJson(Map<String, dynamic> json) {
  return _FlavorChart.fromJson(json);
}

/// @nodoc
mixin _$FlavorChart {
  int? get brandId => throw _privateConstructorUsedError;
  double get f1 => throw _privateConstructorUsedError;
  double get f2 => throw _privateConstructorUsedError;
  double get f3 => throw _privateConstructorUsedError;
  double get f4 => throw _privateConstructorUsedError;
  double get f5 => throw _privateConstructorUsedError;
  double get f6 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorChartCopyWith<FlavorChart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorChartCopyWith<$Res> {
  factory $FlavorChartCopyWith(
          FlavorChart value, $Res Function(FlavorChart) then) =
      _$FlavorChartCopyWithImpl<$Res, FlavorChart>;
  @useResult
  $Res call(
      {int? brandId,
      double f1,
      double f2,
      double f3,
      double f4,
      double f5,
      double f6});
}

/// @nodoc
class _$FlavorChartCopyWithImpl<$Res, $Val extends FlavorChart>
    implements $FlavorChartCopyWith<$Res> {
  _$FlavorChartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? f1 = null,
    Object? f2 = null,
    Object? f3 = null,
    Object? f4 = null,
    Object? f5 = null,
    Object? f6 = null,
  }) {
    return _then(_value.copyWith(
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      f1: null == f1
          ? _value.f1
          : f1 // ignore: cast_nullable_to_non_nullable
              as double,
      f2: null == f2
          ? _value.f2
          : f2 // ignore: cast_nullable_to_non_nullable
              as double,
      f3: null == f3
          ? _value.f3
          : f3 // ignore: cast_nullable_to_non_nullable
              as double,
      f4: null == f4
          ? _value.f4
          : f4 // ignore: cast_nullable_to_non_nullable
              as double,
      f5: null == f5
          ? _value.f5
          : f5 // ignore: cast_nullable_to_non_nullable
              as double,
      f6: null == f6
          ? _value.f6
          : f6 // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlavorChartImplCopyWith<$Res>
    implements $FlavorChartCopyWith<$Res> {
  factory _$$FlavorChartImplCopyWith(
          _$FlavorChartImpl value, $Res Function(_$FlavorChartImpl) then) =
      __$$FlavorChartImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? brandId,
      double f1,
      double f2,
      double f3,
      double f4,
      double f5,
      double f6});
}

/// @nodoc
class __$$FlavorChartImplCopyWithImpl<$Res>
    extends _$FlavorChartCopyWithImpl<$Res, _$FlavorChartImpl>
    implements _$$FlavorChartImplCopyWith<$Res> {
  __$$FlavorChartImplCopyWithImpl(
      _$FlavorChartImpl _value, $Res Function(_$FlavorChartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = freezed,
    Object? f1 = null,
    Object? f2 = null,
    Object? f3 = null,
    Object? f4 = null,
    Object? f5 = null,
    Object? f6 = null,
  }) {
    return _then(_$FlavorChartImpl(
      brandId: freezed == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int?,
      f1: null == f1
          ? _value.f1
          : f1 // ignore: cast_nullable_to_non_nullable
              as double,
      f2: null == f2
          ? _value.f2
          : f2 // ignore: cast_nullable_to_non_nullable
              as double,
      f3: null == f3
          ? _value.f3
          : f3 // ignore: cast_nullable_to_non_nullable
              as double,
      f4: null == f4
          ? _value.f4
          : f4 // ignore: cast_nullable_to_non_nullable
              as double,
      f5: null == f5
          ? _value.f5
          : f5 // ignore: cast_nullable_to_non_nullable
              as double,
      f6: null == f6
          ? _value.f6
          : f6 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorChartImpl implements _FlavorChart {
  const _$FlavorChartImpl(
      {this.brandId,
      this.f1 = 0,
      this.f2 = 0,
      this.f3 = 0,
      this.f4 = 0,
      this.f5 = 0,
      this.f6 = 0});

  factory _$FlavorChartImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorChartImplFromJson(json);

  @override
  final int? brandId;
  @override
  @JsonKey()
  final double f1;
  @override
  @JsonKey()
  final double f2;
  @override
  @JsonKey()
  final double f3;
  @override
  @JsonKey()
  final double f4;
  @override
  @JsonKey()
  final double f5;
  @override
  @JsonKey()
  final double f6;

  @override
  String toString() {
    return 'FlavorChart(brandId: $brandId, f1: $f1, f2: $f2, f3: $f3, f4: $f4, f5: $f5, f6: $f6)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorChartImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            (identical(other.f1, f1) || other.f1 == f1) &&
            (identical(other.f2, f2) || other.f2 == f2) &&
            (identical(other.f3, f3) || other.f3 == f3) &&
            (identical(other.f4, f4) || other.f4 == f4) &&
            (identical(other.f5, f5) || other.f5 == f5) &&
            (identical(other.f6, f6) || other.f6 == f6));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, brandId, f1, f2, f3, f4, f5, f6);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorChartImplCopyWith<_$FlavorChartImpl> get copyWith =>
      __$$FlavorChartImplCopyWithImpl<_$FlavorChartImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorChartImplToJson(
      this,
    );
  }
}

abstract class _FlavorChart implements FlavorChart {
  const factory _FlavorChart(
      {final int? brandId,
      final double f1,
      final double f2,
      final double f3,
      final double f4,
      final double f5,
      final double f6}) = _$FlavorChartImpl;

  factory _FlavorChart.fromJson(Map<String, dynamic> json) =
      _$FlavorChartImpl.fromJson;

  @override
  int? get brandId;
  @override
  double get f1;
  @override
  double get f2;
  @override
  double get f3;
  @override
  double get f4;
  @override
  double get f5;
  @override
  double get f6;
  @override
  @JsonKey(ignore: true)
  _$$FlavorChartImplCopyWith<_$FlavorChartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorTag _$FlavorTagFromJson(Map<String, dynamic> json) {
  return _FlavorTag.fromJson(json);
}

/// @nodoc
mixin _$FlavorTag {
  int get id => throw _privateConstructorUsedError;
  String? get tag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlavorTagCopyWith<FlavorTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTagCopyWith<$Res> {
  factory $FlavorTagCopyWith(FlavorTag value, $Res Function(FlavorTag) then) =
      _$FlavorTagCopyWithImpl<$Res, FlavorTag>;
  @useResult
  $Res call({int id, String? tag});
}

/// @nodoc
class _$FlavorTagCopyWithImpl<$Res, $Val extends FlavorTag>
    implements $FlavorTagCopyWith<$Res> {
  _$FlavorTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlavorTagImplCopyWith<$Res>
    implements $FlavorTagCopyWith<$Res> {
  factory _$$FlavorTagImplCopyWith(
          _$FlavorTagImpl value, $Res Function(_$FlavorTagImpl) then) =
      __$$FlavorTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? tag});
}

/// @nodoc
class __$$FlavorTagImplCopyWithImpl<$Res>
    extends _$FlavorTagCopyWithImpl<$Res, _$FlavorTagImpl>
    implements _$$FlavorTagImplCopyWith<$Res> {
  __$$FlavorTagImplCopyWithImpl(
      _$FlavorTagImpl _value, $Res Function(_$FlavorTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? tag = freezed,
  }) {
    return _then(_$FlavorTagImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tag: freezed == tag
          ? _value.tag
          : tag // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTagImpl implements _FlavorTag {
  const _$FlavorTagImpl({required this.id, this.tag});

  factory _$FlavorTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTagImplFromJson(json);

  @override
  final int id;
  @override
  final String? tag;

  @override
  String toString() {
    return 'FlavorTag(id: $id, tag: $tag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTagImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tag, tag) || other.tag == tag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, tag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTagImplCopyWith<_$FlavorTagImpl> get copyWith =>
      __$$FlavorTagImplCopyWithImpl<_$FlavorTagImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTagImplToJson(
      this,
    );
  }
}

abstract class _FlavorTag implements FlavorTag {
  const factory _FlavorTag({required final int id, final String? tag}) =
      _$FlavorTagImpl;

  factory _FlavorTag.fromJson(Map<String, dynamic> json) =
      _$FlavorTagImpl.fromJson;

  @override
  int get id;
  @override
  String? get tag;
  @override
  @JsonKey(ignore: true)
  _$$FlavorTagImplCopyWith<_$FlavorTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BrandFlavorTag _$BrandFlavorTagFromJson(Map<String, dynamic> json) {
  return _BrandFlavorTag.fromJson(json);
}

/// @nodoc
mixin _$BrandFlavorTag {
  int get brandId => throw _privateConstructorUsedError;
  List<int> get tagIds => throw _privateConstructorUsedError;
  List<String> get tagNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandFlavorTagCopyWith<BrandFlavorTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandFlavorTagCopyWith<$Res> {
  factory $BrandFlavorTagCopyWith(
          BrandFlavorTag value, $Res Function(BrandFlavorTag) then) =
      _$BrandFlavorTagCopyWithImpl<$Res, BrandFlavorTag>;
  @useResult
  $Res call({int brandId, List<int> tagIds, List<String> tagNames});
}

/// @nodoc
class _$BrandFlavorTagCopyWithImpl<$Res, $Val extends BrandFlavorTag>
    implements $BrandFlavorTagCopyWith<$Res> {
  _$BrandFlavorTagCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
    Object? tagIds = null,
    Object? tagNames = null,
  }) {
    return _then(_value.copyWith(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: null == tagIds
          ? _value.tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tagNames: null == tagNames
          ? _value.tagNames
          : tagNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandFlavorTagImplCopyWith<$Res>
    implements $BrandFlavorTagCopyWith<$Res> {
  factory _$$BrandFlavorTagImplCopyWith(_$BrandFlavorTagImpl value,
          $Res Function(_$BrandFlavorTagImpl) then) =
      __$$BrandFlavorTagImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int brandId, List<int> tagIds, List<String> tagNames});
}

/// @nodoc
class __$$BrandFlavorTagImplCopyWithImpl<$Res>
    extends _$BrandFlavorTagCopyWithImpl<$Res, _$BrandFlavorTagImpl>
    implements _$$BrandFlavorTagImplCopyWith<$Res> {
  __$$BrandFlavorTagImplCopyWithImpl(
      _$BrandFlavorTagImpl _value, $Res Function(_$BrandFlavorTagImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brandId = null,
    Object? tagIds = null,
    Object? tagNames = null,
  }) {
    return _then(_$BrandFlavorTagImpl(
      brandId: null == brandId
          ? _value.brandId
          : brandId // ignore: cast_nullable_to_non_nullable
              as int,
      tagIds: null == tagIds
          ? _value._tagIds
          : tagIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      tagNames: null == tagNames
          ? _value._tagNames
          : tagNames // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BrandFlavorTagImpl implements _BrandFlavorTag {
  const _$BrandFlavorTagImpl(
      {required this.brandId,
      required final List<int> tagIds,
      final List<String> tagNames = const []})
      : _tagIds = tagIds,
        _tagNames = tagNames;

  factory _$BrandFlavorTagImpl.fromJson(Map<String, dynamic> json) =>
      _$$BrandFlavorTagImplFromJson(json);

  @override
  final int brandId;
  final List<int> _tagIds;
  @override
  List<int> get tagIds {
    if (_tagIds is EqualUnmodifiableListView) return _tagIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagIds);
  }

  final List<String> _tagNames;
  @override
  @JsonKey()
  List<String> get tagNames {
    if (_tagNames is EqualUnmodifiableListView) return _tagNames;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tagNames);
  }

  @override
  String toString() {
    return 'BrandFlavorTag(brandId: $brandId, tagIds: $tagIds, tagNames: $tagNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandFlavorTagImpl &&
            (identical(other.brandId, brandId) || other.brandId == brandId) &&
            const DeepCollectionEquality().equals(other._tagIds, _tagIds) &&
            const DeepCollectionEquality().equals(other._tagNames, _tagNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      brandId,
      const DeepCollectionEquality().hash(_tagIds),
      const DeepCollectionEquality().hash(_tagNames));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandFlavorTagImplCopyWith<_$BrandFlavorTagImpl> get copyWith =>
      __$$BrandFlavorTagImplCopyWithImpl<_$BrandFlavorTagImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BrandFlavorTagImplToJson(
      this,
    );
  }
}

abstract class _BrandFlavorTag implements BrandFlavorTag {
  const factory _BrandFlavorTag(
      {required final int brandId,
      required final List<int> tagIds,
      final List<String> tagNames}) = _$BrandFlavorTagImpl;

  factory _BrandFlavorTag.fromJson(Map<String, dynamic> json) =
      _$BrandFlavorTagImpl.fromJson;

  @override
  int get brandId;
  @override
  List<int> get tagIds;
  @override
  List<String> get tagNames;
  @override
  @JsonKey(ignore: true)
  _$$BrandFlavorTagImplCopyWith<_$BrandFlavorTagImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

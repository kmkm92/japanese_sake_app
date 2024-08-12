// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $MyBrandsTable extends MyBrands with TableInfo<$MyBrandsTable, MyBrand> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MyBrandsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _brandMeta = const VerificationMeta('brand');
  @override
  late final GeneratedColumn<String> brand = GeneratedColumn<String>(
      'brand', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _kanaMeta = const VerificationMeta('kana');
  @override
  late final GeneratedColumn<String> kana = GeneratedColumn<String>(
      'kana', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _breweryMeta =
      const VerificationMeta('brewery');
  @override
  late final GeneratedColumn<String> brewery = GeneratedColumn<String>(
      'brewery', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _gorgeousMeta =
      const VerificationMeta('gorgeous');
  @override
  late final GeneratedColumn<double> gorgeous = GeneratedColumn<double>(
      'gorgeous', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _mellowMeta = const VerificationMeta('mellow');
  @override
  late final GeneratedColumn<double> mellow = GeneratedColumn<double>(
      'mellow', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _profoundMeta =
      const VerificationMeta('profound');
  @override
  late final GeneratedColumn<double> profound = GeneratedColumn<double>(
      'profound', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _clamMeta = const VerificationMeta('clam');
  @override
  late final GeneratedColumn<double> clam = GeneratedColumn<double>(
      'clam', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _dryMeta = const VerificationMeta('dry');
  @override
  late final GeneratedColumn<double> dry = GeneratedColumn<double>(
      'dry', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _nimbleMeta = const VerificationMeta('nimble');
  @override
  late final GeneratedColumn<double> nimble = GeneratedColumn<double>(
      'nimble', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  static const VerificationMeta _memoMeta = const VerificationMeta('memo');
  @override
  late final GeneratedColumn<String> memo = GeneratedColumn<String>(
      'memo', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        brand,
        kana,
        brewery,
        area,
        gorgeous,
        mellow,
        profound,
        clam,
        dry,
        nimble,
        memo
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'my_brands';
  @override
  VerificationContext validateIntegrity(Insertable<MyBrand> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('brand')) {
      context.handle(
          _brandMeta, brand.isAcceptableOrUnknown(data['brand']!, _brandMeta));
    } else if (isInserting) {
      context.missing(_brandMeta);
    }
    if (data.containsKey('kana')) {
      context.handle(
          _kanaMeta, kana.isAcceptableOrUnknown(data['kana']!, _kanaMeta));
    }
    if (data.containsKey('brewery')) {
      context.handle(_breweryMeta,
          brewery.isAcceptableOrUnknown(data['brewery']!, _breweryMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('gorgeous')) {
      context.handle(_gorgeousMeta,
          gorgeous.isAcceptableOrUnknown(data['gorgeous']!, _gorgeousMeta));
    }
    if (data.containsKey('mellow')) {
      context.handle(_mellowMeta,
          mellow.isAcceptableOrUnknown(data['mellow']!, _mellowMeta));
    }
    if (data.containsKey('profound')) {
      context.handle(_profoundMeta,
          profound.isAcceptableOrUnknown(data['profound']!, _profoundMeta));
    }
    if (data.containsKey('clam')) {
      context.handle(
          _clamMeta, clam.isAcceptableOrUnknown(data['clam']!, _clamMeta));
    }
    if (data.containsKey('dry')) {
      context.handle(
          _dryMeta, dry.isAcceptableOrUnknown(data['dry']!, _dryMeta));
    }
    if (data.containsKey('nimble')) {
      context.handle(_nimbleMeta,
          nimble.isAcceptableOrUnknown(data['nimble']!, _nimbleMeta));
    }
    if (data.containsKey('memo')) {
      context.handle(
          _memoMeta, memo.isAcceptableOrUnknown(data['memo']!, _memoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyBrand map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MyBrand(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      brand: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brand'])!,
      kana: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}kana'])!,
      brewery: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}brewery'])!,
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area'])!,
      gorgeous: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}gorgeous'])!,
      mellow: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}mellow'])!,
      profound: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}profound'])!,
      clam: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}clam'])!,
      dry: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}dry'])!,
      nimble: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}nimble'])!,
      memo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}memo'])!,
    );
  }

  @override
  $MyBrandsTable createAlias(String alias) {
    return $MyBrandsTable(attachedDatabase, alias);
  }
}

class MyBrand extends DataClass implements Insertable<MyBrand> {
  final int id;
  final String brand;
  final String kana;
  final String brewery;
  final String area;
  final double gorgeous;
  final double mellow;
  final double profound;
  final double clam;
  final double dry;
  final double nimble;
  final String memo;
  const MyBrand(
      {required this.id,
      required this.brand,
      required this.kana,
      required this.brewery,
      required this.area,
      required this.gorgeous,
      required this.mellow,
      required this.profound,
      required this.clam,
      required this.dry,
      required this.nimble,
      required this.memo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['brand'] = Variable<String>(brand);
    map['kana'] = Variable<String>(kana);
    map['brewery'] = Variable<String>(brewery);
    map['area'] = Variable<String>(area);
    map['gorgeous'] = Variable<double>(gorgeous);
    map['mellow'] = Variable<double>(mellow);
    map['profound'] = Variable<double>(profound);
    map['clam'] = Variable<double>(clam);
    map['dry'] = Variable<double>(dry);
    map['nimble'] = Variable<double>(nimble);
    map['memo'] = Variable<String>(memo);
    return map;
  }

  MyBrandsCompanion toCompanion(bool nullToAbsent) {
    return MyBrandsCompanion(
      id: Value(id),
      brand: Value(brand),
      kana: Value(kana),
      brewery: Value(brewery),
      area: Value(area),
      gorgeous: Value(gorgeous),
      mellow: Value(mellow),
      profound: Value(profound),
      clam: Value(clam),
      dry: Value(dry),
      nimble: Value(nimble),
      memo: Value(memo),
    );
  }

  factory MyBrand.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MyBrand(
      id: serializer.fromJson<int>(json['id']),
      brand: serializer.fromJson<String>(json['brand']),
      kana: serializer.fromJson<String>(json['kana']),
      brewery: serializer.fromJson<String>(json['brewery']),
      area: serializer.fromJson<String>(json['area']),
      gorgeous: serializer.fromJson<double>(json['gorgeous']),
      mellow: serializer.fromJson<double>(json['mellow']),
      profound: serializer.fromJson<double>(json['profound']),
      clam: serializer.fromJson<double>(json['clam']),
      dry: serializer.fromJson<double>(json['dry']),
      nimble: serializer.fromJson<double>(json['nimble']),
      memo: serializer.fromJson<String>(json['memo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'brand': serializer.toJson<String>(brand),
      'kana': serializer.toJson<String>(kana),
      'brewery': serializer.toJson<String>(brewery),
      'area': serializer.toJson<String>(area),
      'gorgeous': serializer.toJson<double>(gorgeous),
      'mellow': serializer.toJson<double>(mellow),
      'profound': serializer.toJson<double>(profound),
      'clam': serializer.toJson<double>(clam),
      'dry': serializer.toJson<double>(dry),
      'nimble': serializer.toJson<double>(nimble),
      'memo': serializer.toJson<String>(memo),
    };
  }

  MyBrand copyWith(
          {int? id,
          String? brand,
          String? kana,
          String? brewery,
          String? area,
          double? gorgeous,
          double? mellow,
          double? profound,
          double? clam,
          double? dry,
          double? nimble,
          String? memo}) =>
      MyBrand(
        id: id ?? this.id,
        brand: brand ?? this.brand,
        kana: kana ?? this.kana,
        brewery: brewery ?? this.brewery,
        area: area ?? this.area,
        gorgeous: gorgeous ?? this.gorgeous,
        mellow: mellow ?? this.mellow,
        profound: profound ?? this.profound,
        clam: clam ?? this.clam,
        dry: dry ?? this.dry,
        nimble: nimble ?? this.nimble,
        memo: memo ?? this.memo,
      );
  MyBrand copyWithCompanion(MyBrandsCompanion data) {
    return MyBrand(
      id: data.id.present ? data.id.value : this.id,
      brand: data.brand.present ? data.brand.value : this.brand,
      kana: data.kana.present ? data.kana.value : this.kana,
      brewery: data.brewery.present ? data.brewery.value : this.brewery,
      area: data.area.present ? data.area.value : this.area,
      gorgeous: data.gorgeous.present ? data.gorgeous.value : this.gorgeous,
      mellow: data.mellow.present ? data.mellow.value : this.mellow,
      profound: data.profound.present ? data.profound.value : this.profound,
      clam: data.clam.present ? data.clam.value : this.clam,
      dry: data.dry.present ? data.dry.value : this.dry,
      nimble: data.nimble.present ? data.nimble.value : this.nimble,
      memo: data.memo.present ? data.memo.value : this.memo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MyBrand(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('kana: $kana, ')
          ..write('brewery: $brewery, ')
          ..write('area: $area, ')
          ..write('gorgeous: $gorgeous, ')
          ..write('mellow: $mellow, ')
          ..write('profound: $profound, ')
          ..write('clam: $clam, ')
          ..write('dry: $dry, ')
          ..write('nimble: $nimble, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, brand, kana, brewery, area, gorgeous,
      mellow, profound, clam, dry, nimble, memo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyBrand &&
          other.id == this.id &&
          other.brand == this.brand &&
          other.kana == this.kana &&
          other.brewery == this.brewery &&
          other.area == this.area &&
          other.gorgeous == this.gorgeous &&
          other.mellow == this.mellow &&
          other.profound == this.profound &&
          other.clam == this.clam &&
          other.dry == this.dry &&
          other.nimble == this.nimble &&
          other.memo == this.memo);
}

class MyBrandsCompanion extends UpdateCompanion<MyBrand> {
  final Value<int> id;
  final Value<String> brand;
  final Value<String> kana;
  final Value<String> brewery;
  final Value<String> area;
  final Value<double> gorgeous;
  final Value<double> mellow;
  final Value<double> profound;
  final Value<double> clam;
  final Value<double> dry;
  final Value<double> nimble;
  final Value<String> memo;
  const MyBrandsCompanion({
    this.id = const Value.absent(),
    this.brand = const Value.absent(),
    this.kana = const Value.absent(),
    this.brewery = const Value.absent(),
    this.area = const Value.absent(),
    this.gorgeous = const Value.absent(),
    this.mellow = const Value.absent(),
    this.profound = const Value.absent(),
    this.clam = const Value.absent(),
    this.dry = const Value.absent(),
    this.nimble = const Value.absent(),
    this.memo = const Value.absent(),
  });
  MyBrandsCompanion.insert({
    this.id = const Value.absent(),
    required String brand,
    this.kana = const Value.absent(),
    this.brewery = const Value.absent(),
    this.area = const Value.absent(),
    this.gorgeous = const Value.absent(),
    this.mellow = const Value.absent(),
    this.profound = const Value.absent(),
    this.clam = const Value.absent(),
    this.dry = const Value.absent(),
    this.nimble = const Value.absent(),
    this.memo = const Value.absent(),
  }) : brand = Value(brand);
  static Insertable<MyBrand> custom({
    Expression<int>? id,
    Expression<String>? brand,
    Expression<String>? kana,
    Expression<String>? brewery,
    Expression<String>? area,
    Expression<double>? gorgeous,
    Expression<double>? mellow,
    Expression<double>? profound,
    Expression<double>? clam,
    Expression<double>? dry,
    Expression<double>? nimble,
    Expression<String>? memo,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brand != null) 'brand': brand,
      if (kana != null) 'kana': kana,
      if (brewery != null) 'brewery': brewery,
      if (area != null) 'area': area,
      if (gorgeous != null) 'gorgeous': gorgeous,
      if (mellow != null) 'mellow': mellow,
      if (profound != null) 'profound': profound,
      if (clam != null) 'clam': clam,
      if (dry != null) 'dry': dry,
      if (nimble != null) 'nimble': nimble,
      if (memo != null) 'memo': memo,
    });
  }

  MyBrandsCompanion copyWith(
      {Value<int>? id,
      Value<String>? brand,
      Value<String>? kana,
      Value<String>? brewery,
      Value<String>? area,
      Value<double>? gorgeous,
      Value<double>? mellow,
      Value<double>? profound,
      Value<double>? clam,
      Value<double>? dry,
      Value<double>? nimble,
      Value<String>? memo}) {
    return MyBrandsCompanion(
      id: id ?? this.id,
      brand: brand ?? this.brand,
      kana: kana ?? this.kana,
      brewery: brewery ?? this.brewery,
      area: area ?? this.area,
      gorgeous: gorgeous ?? this.gorgeous,
      mellow: mellow ?? this.mellow,
      profound: profound ?? this.profound,
      clam: clam ?? this.clam,
      dry: dry ?? this.dry,
      nimble: nimble ?? this.nimble,
      memo: memo ?? this.memo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (brand.present) {
      map['brand'] = Variable<String>(brand.value);
    }
    if (kana.present) {
      map['kana'] = Variable<String>(kana.value);
    }
    if (brewery.present) {
      map['brewery'] = Variable<String>(brewery.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (gorgeous.present) {
      map['gorgeous'] = Variable<double>(gorgeous.value);
    }
    if (mellow.present) {
      map['mellow'] = Variable<double>(mellow.value);
    }
    if (profound.present) {
      map['profound'] = Variable<double>(profound.value);
    }
    if (clam.present) {
      map['clam'] = Variable<double>(clam.value);
    }
    if (dry.present) {
      map['dry'] = Variable<double>(dry.value);
    }
    if (nimble.present) {
      map['nimble'] = Variable<double>(nimble.value);
    }
    if (memo.present) {
      map['memo'] = Variable<String>(memo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyBrandsCompanion(')
          ..write('id: $id, ')
          ..write('brand: $brand, ')
          ..write('kana: $kana, ')
          ..write('brewery: $brewery, ')
          ..write('area: $area, ')
          ..write('gorgeous: $gorgeous, ')
          ..write('mellow: $mellow, ')
          ..write('profound: $profound, ')
          ..write('clam: $clam, ')
          ..write('dry: $dry, ')
          ..write('nimble: $nimble, ')
          ..write('memo: $memo')
          ..write(')'))
        .toString();
  }
}

class $MyTagsTable extends MyTags with TableInfo<$MyTagsTable, MyTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MyTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'my_tags';
  @override
  VerificationContext validateIntegrity(Insertable<MyTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MyTag(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
    );
  }

  @override
  $MyTagsTable createAlias(String alias) {
    return $MyTagsTable(attachedDatabase, alias);
  }
}

class MyTag extends DataClass implements Insertable<MyTag> {
  final int id;
  final String name;
  const MyTag({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['name'] = Variable<String>(name);
    return map;
  }

  MyTagsCompanion toCompanion(bool nullToAbsent) {
    return MyTagsCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory MyTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MyTag(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
    };
  }

  MyTag copyWith({int? id, String? name}) => MyTag(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  MyTag copyWithCompanion(MyTagsCompanion data) {
    return MyTag(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MyTag(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyTag && other.id == this.id && other.name == this.name);
}

class MyTagsCompanion extends UpdateCompanion<MyTag> {
  final Value<int> id;
  final Value<String> name;
  const MyTagsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  MyTagsCompanion.insert({
    this.id = const Value.absent(),
    required String name,
  }) : name = Value(name);
  static Insertable<MyTag> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  MyTagsCompanion copyWith({Value<int>? id, Value<String>? name}) {
    return MyTagsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyTagsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $MyBrandTagsTable extends MyBrandTags
    with TableInfo<$MyBrandTagsTable, MyBrandTag> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MyBrandTagsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _brandIdMeta =
      const VerificationMeta('brandId');
  @override
  late final GeneratedColumn<int> brandId = GeneratedColumn<int>(
      'brand_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES my_brands(id)');
  static const VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  @override
  late final GeneratedColumn<int> tagId = GeneratedColumn<int>(
      'tag_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES my_tags(id)');
  @override
  List<GeneratedColumn> get $columns => [brandId, tagId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'my_brand_tags';
  @override
  VerificationContext validateIntegrity(Insertable<MyBrandTag> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('brand_id')) {
      context.handle(_brandIdMeta,
          brandId.isAcceptableOrUnknown(data['brand_id']!, _brandIdMeta));
    } else if (isInserting) {
      context.missing(_brandIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
          _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id']!, _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  MyBrandTag map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MyBrandTag(
      brandId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}brand_id'])!,
      tagId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tag_id'])!,
    );
  }

  @override
  $MyBrandTagsTable createAlias(String alias) {
    return $MyBrandTagsTable(attachedDatabase, alias);
  }
}

class MyBrandTag extends DataClass implements Insertable<MyBrandTag> {
  final int brandId;
  final int tagId;
  const MyBrandTag({required this.brandId, required this.tagId});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['brand_id'] = Variable<int>(brandId);
    map['tag_id'] = Variable<int>(tagId);
    return map;
  }

  MyBrandTagsCompanion toCompanion(bool nullToAbsent) {
    return MyBrandTagsCompanion(
      brandId: Value(brandId),
      tagId: Value(tagId),
    );
  }

  factory MyBrandTag.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MyBrandTag(
      brandId: serializer.fromJson<int>(json['brandId']),
      tagId: serializer.fromJson<int>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'brandId': serializer.toJson<int>(brandId),
      'tagId': serializer.toJson<int>(tagId),
    };
  }

  MyBrandTag copyWith({int? brandId, int? tagId}) => MyBrandTag(
        brandId: brandId ?? this.brandId,
        tagId: tagId ?? this.tagId,
      );
  MyBrandTag copyWithCompanion(MyBrandTagsCompanion data) {
    return MyBrandTag(
      brandId: data.brandId.present ? data.brandId.value : this.brandId,
      tagId: data.tagId.present ? data.tagId.value : this.tagId,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MyBrandTag(')
          ..write('brandId: $brandId, ')
          ..write('tagId: $tagId')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(brandId, tagId);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyBrandTag &&
          other.brandId == this.brandId &&
          other.tagId == this.tagId);
}

class MyBrandTagsCompanion extends UpdateCompanion<MyBrandTag> {
  final Value<int> brandId;
  final Value<int> tagId;
  final Value<int> rowid;
  const MyBrandTagsCompanion({
    this.brandId = const Value.absent(),
    this.tagId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  MyBrandTagsCompanion.insert({
    required int brandId,
    required int tagId,
    this.rowid = const Value.absent(),
  })  : brandId = Value(brandId),
        tagId = Value(tagId);
  static Insertable<MyBrandTag> custom({
    Expression<int>? brandId,
    Expression<int>? tagId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (brandId != null) 'brand_id': brandId,
      if (tagId != null) 'tag_id': tagId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  MyBrandTagsCompanion copyWith(
      {Value<int>? brandId, Value<int>? tagId, Value<int>? rowid}) {
    return MyBrandTagsCompanion(
      brandId: brandId ?? this.brandId,
      tagId: tagId ?? this.tagId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (brandId.present) {
      map['brand_id'] = Variable<int>(brandId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<int>(tagId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyBrandTagsCompanion(')
          ..write('brandId: $brandId, ')
          ..write('tagId: $tagId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $MyImagesTable extends MyImages with TableInfo<$MyImagesTable, MyImage> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MyImagesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _brandIdMeta =
      const VerificationMeta('brandId');
  @override
  late final GeneratedColumn<int> brandId = GeneratedColumn<int>(
      'brand_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      $customConstraints: 'REFERENCES my_brands(id)');
  static const VerificationMeta _imagePathMeta =
      const VerificationMeta('imagePath');
  @override
  late final GeneratedColumn<String> imagePath = GeneratedColumn<String>(
      'image_path', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, brandId, imagePath];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'my_images';
  @override
  VerificationContext validateIntegrity(Insertable<MyImage> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('brand_id')) {
      context.handle(_brandIdMeta,
          brandId.isAcceptableOrUnknown(data['brand_id']!, _brandIdMeta));
    } else if (isInserting) {
      context.missing(_brandIdMeta);
    }
    if (data.containsKey('image_path')) {
      context.handle(_imagePathMeta,
          imagePath.isAcceptableOrUnknown(data['image_path']!, _imagePathMeta));
    } else if (isInserting) {
      context.missing(_imagePathMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MyImage map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MyImage(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      brandId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}brand_id'])!,
      imagePath: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_path'])!,
    );
  }

  @override
  $MyImagesTable createAlias(String alias) {
    return $MyImagesTable(attachedDatabase, alias);
  }
}

class MyImage extends DataClass implements Insertable<MyImage> {
  final int id;
  final int brandId;
  final String imagePath;
  const MyImage(
      {required this.id, required this.brandId, required this.imagePath});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['brand_id'] = Variable<int>(brandId);
    map['image_path'] = Variable<String>(imagePath);
    return map;
  }

  MyImagesCompanion toCompanion(bool nullToAbsent) {
    return MyImagesCompanion(
      id: Value(id),
      brandId: Value(brandId),
      imagePath: Value(imagePath),
    );
  }

  factory MyImage.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MyImage(
      id: serializer.fromJson<int>(json['id']),
      brandId: serializer.fromJson<int>(json['brandId']),
      imagePath: serializer.fromJson<String>(json['imagePath']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'brandId': serializer.toJson<int>(brandId),
      'imagePath': serializer.toJson<String>(imagePath),
    };
  }

  MyImage copyWith({int? id, int? brandId, String? imagePath}) => MyImage(
        id: id ?? this.id,
        brandId: brandId ?? this.brandId,
        imagePath: imagePath ?? this.imagePath,
      );
  MyImage copyWithCompanion(MyImagesCompanion data) {
    return MyImage(
      id: data.id.present ? data.id.value : this.id,
      brandId: data.brandId.present ? data.brandId.value : this.brandId,
      imagePath: data.imagePath.present ? data.imagePath.value : this.imagePath,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MyImage(')
          ..write('id: $id, ')
          ..write('brandId: $brandId, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, brandId, imagePath);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MyImage &&
          other.id == this.id &&
          other.brandId == this.brandId &&
          other.imagePath == this.imagePath);
}

class MyImagesCompanion extends UpdateCompanion<MyImage> {
  final Value<int> id;
  final Value<int> brandId;
  final Value<String> imagePath;
  const MyImagesCompanion({
    this.id = const Value.absent(),
    this.brandId = const Value.absent(),
    this.imagePath = const Value.absent(),
  });
  MyImagesCompanion.insert({
    this.id = const Value.absent(),
    required int brandId,
    required String imagePath,
  })  : brandId = Value(brandId),
        imagePath = Value(imagePath);
  static Insertable<MyImage> custom({
    Expression<int>? id,
    Expression<int>? brandId,
    Expression<String>? imagePath,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (brandId != null) 'brand_id': brandId,
      if (imagePath != null) 'image_path': imagePath,
    });
  }

  MyImagesCompanion copyWith(
      {Value<int>? id, Value<int>? brandId, Value<String>? imagePath}) {
    return MyImagesCompanion(
      id: id ?? this.id,
      brandId: brandId ?? this.brandId,
      imagePath: imagePath ?? this.imagePath,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (brandId.present) {
      map['brand_id'] = Variable<int>(brandId.value);
    }
    if (imagePath.present) {
      map['image_path'] = Variable<String>(imagePath.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MyImagesCompanion(')
          ..write('id: $id, ')
          ..write('brandId: $brandId, ')
          ..write('imagePath: $imagePath')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $MyBrandsTable myBrands = $MyBrandsTable(this);
  late final $MyTagsTable myTags = $MyTagsTable(this);
  late final $MyBrandTagsTable myBrandTags = $MyBrandTagsTable(this);
  late final $MyImagesTable myImages = $MyImagesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [myBrands, myTags, myBrandTags, myImages];
}

typedef $$MyBrandsTableCreateCompanionBuilder = MyBrandsCompanion Function({
  Value<int> id,
  required String brand,
  Value<String> kana,
  Value<String> brewery,
  Value<String> area,
  Value<double> gorgeous,
  Value<double> mellow,
  Value<double> profound,
  Value<double> clam,
  Value<double> dry,
  Value<double> nimble,
  Value<String> memo,
});
typedef $$MyBrandsTableUpdateCompanionBuilder = MyBrandsCompanion Function({
  Value<int> id,
  Value<String> brand,
  Value<String> kana,
  Value<String> brewery,
  Value<String> area,
  Value<double> gorgeous,
  Value<double> mellow,
  Value<double> profound,
  Value<double> clam,
  Value<double> dry,
  Value<double> nimble,
  Value<String> memo,
});

class $$MyBrandsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MyBrandsTable,
    MyBrand,
    $$MyBrandsTableFilterComposer,
    $$MyBrandsTableOrderingComposer,
    $$MyBrandsTableCreateCompanionBuilder,
    $$MyBrandsTableUpdateCompanionBuilder> {
  $$MyBrandsTableTableManager(_$AppDatabase db, $MyBrandsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MyBrandsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MyBrandsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> brand = const Value.absent(),
            Value<String> kana = const Value.absent(),
            Value<String> brewery = const Value.absent(),
            Value<String> area = const Value.absent(),
            Value<double> gorgeous = const Value.absent(),
            Value<double> mellow = const Value.absent(),
            Value<double> profound = const Value.absent(),
            Value<double> clam = const Value.absent(),
            Value<double> dry = const Value.absent(),
            Value<double> nimble = const Value.absent(),
            Value<String> memo = const Value.absent(),
          }) =>
              MyBrandsCompanion(
            id: id,
            brand: brand,
            kana: kana,
            brewery: brewery,
            area: area,
            gorgeous: gorgeous,
            mellow: mellow,
            profound: profound,
            clam: clam,
            dry: dry,
            nimble: nimble,
            memo: memo,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String brand,
            Value<String> kana = const Value.absent(),
            Value<String> brewery = const Value.absent(),
            Value<String> area = const Value.absent(),
            Value<double> gorgeous = const Value.absent(),
            Value<double> mellow = const Value.absent(),
            Value<double> profound = const Value.absent(),
            Value<double> clam = const Value.absent(),
            Value<double> dry = const Value.absent(),
            Value<double> nimble = const Value.absent(),
            Value<String> memo = const Value.absent(),
          }) =>
              MyBrandsCompanion.insert(
            id: id,
            brand: brand,
            kana: kana,
            brewery: brewery,
            area: area,
            gorgeous: gorgeous,
            mellow: mellow,
            profound: profound,
            clam: clam,
            dry: dry,
            nimble: nimble,
            memo: memo,
          ),
        ));
}

class $$MyBrandsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MyBrandsTable> {
  $$MyBrandsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get kana => $state.composableBuilder(
      column: $state.table.kana,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get brewery => $state.composableBuilder(
      column: $state.table.brewery,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get gorgeous => $state.composableBuilder(
      column: $state.table.gorgeous,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get mellow => $state.composableBuilder(
      column: $state.table.mellow,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get profound => $state.composableBuilder(
      column: $state.table.profound,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get clam => $state.composableBuilder(
      column: $state.table.clam,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get dry => $state.composableBuilder(
      column: $state.table.dry,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get nimble => $state.composableBuilder(
      column: $state.table.nimble,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get memo => $state.composableBuilder(
      column: $state.table.memo,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter myBrandTagsRefs(
      ComposableFilter Function($$MyBrandTagsTableFilterComposer f) f) {
    final $$MyBrandTagsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.myBrandTags,
        getReferencedColumn: (t) => t.brandId,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandTagsTableFilterComposer(ComposerState($state.db,
                $state.db.myBrandTags, joinBuilder, parentComposers)));
    return f(composer);
  }

  ComposableFilter myImagesRefs(
      ComposableFilter Function($$MyImagesTableFilterComposer f) f) {
    final $$MyImagesTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.myImages,
        getReferencedColumn: (t) => t.brandId,
        builder: (joinBuilder, parentComposers) =>
            $$MyImagesTableFilterComposer(ComposerState(
                $state.db, $state.db.myImages, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$MyBrandsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MyBrandsTable> {
  $$MyBrandsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get brand => $state.composableBuilder(
      column: $state.table.brand,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get kana => $state.composableBuilder(
      column: $state.table.kana,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get brewery => $state.composableBuilder(
      column: $state.table.brewery,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get area => $state.composableBuilder(
      column: $state.table.area,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get gorgeous => $state.composableBuilder(
      column: $state.table.gorgeous,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get mellow => $state.composableBuilder(
      column: $state.table.mellow,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get profound => $state.composableBuilder(
      column: $state.table.profound,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get clam => $state.composableBuilder(
      column: $state.table.clam,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get dry => $state.composableBuilder(
      column: $state.table.dry,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get nimble => $state.composableBuilder(
      column: $state.table.nimble,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get memo => $state.composableBuilder(
      column: $state.table.memo,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$MyTagsTableCreateCompanionBuilder = MyTagsCompanion Function({
  Value<int> id,
  required String name,
});
typedef $$MyTagsTableUpdateCompanionBuilder = MyTagsCompanion Function({
  Value<int> id,
  Value<String> name,
});

class $$MyTagsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MyTagsTable,
    MyTag,
    $$MyTagsTableFilterComposer,
    $$MyTagsTableOrderingComposer,
    $$MyTagsTableCreateCompanionBuilder,
    $$MyTagsTableUpdateCompanionBuilder> {
  $$MyTagsTableTableManager(_$AppDatabase db, $MyTagsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MyTagsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MyTagsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> name = const Value.absent(),
          }) =>
              MyTagsCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String name,
          }) =>
              MyTagsCompanion.insert(
            id: id,
            name: name,
          ),
        ));
}

class $$MyTagsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MyTagsTable> {
  $$MyTagsTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter myBrandTagsRefs(
      ComposableFilter Function($$MyBrandTagsTableFilterComposer f) f) {
    final $$MyBrandTagsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $state.db.myBrandTags,
        getReferencedColumn: (t) => t.tagId,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandTagsTableFilterComposer(ComposerState($state.db,
                $state.db.myBrandTags, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$MyTagsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MyTagsTable> {
  $$MyTagsTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get name => $state.composableBuilder(
      column: $state.table.name,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

typedef $$MyBrandTagsTableCreateCompanionBuilder = MyBrandTagsCompanion
    Function({
  required int brandId,
  required int tagId,
  Value<int> rowid,
});
typedef $$MyBrandTagsTableUpdateCompanionBuilder = MyBrandTagsCompanion
    Function({
  Value<int> brandId,
  Value<int> tagId,
  Value<int> rowid,
});

class $$MyBrandTagsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MyBrandTagsTable,
    MyBrandTag,
    $$MyBrandTagsTableFilterComposer,
    $$MyBrandTagsTableOrderingComposer,
    $$MyBrandTagsTableCreateCompanionBuilder,
    $$MyBrandTagsTableUpdateCompanionBuilder> {
  $$MyBrandTagsTableTableManager(_$AppDatabase db, $MyBrandTagsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MyBrandTagsTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MyBrandTagsTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> brandId = const Value.absent(),
            Value<int> tagId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              MyBrandTagsCompanion(
            brandId: brandId,
            tagId: tagId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required int brandId,
            required int tagId,
            Value<int> rowid = const Value.absent(),
          }) =>
              MyBrandTagsCompanion.insert(
            brandId: brandId,
            tagId: tagId,
            rowid: rowid,
          ),
        ));
}

class $$MyBrandTagsTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MyBrandTagsTable> {
  $$MyBrandTagsTableFilterComposer(super.$state);
  $$MyBrandsTableFilterComposer get brandId {
    final $$MyBrandsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.brandId,
        referencedTable: $state.db.myBrands,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandsTableFilterComposer(ComposerState(
                $state.db, $state.db.myBrands, joinBuilder, parentComposers)));
    return composer;
  }

  $$MyTagsTableFilterComposer get tagId {
    final $$MyTagsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $state.db.myTags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$MyTagsTableFilterComposer(
            ComposerState(
                $state.db, $state.db.myTags, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$MyBrandTagsTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MyBrandTagsTable> {
  $$MyBrandTagsTableOrderingComposer(super.$state);
  $$MyBrandsTableOrderingComposer get brandId {
    final $$MyBrandsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.brandId,
        referencedTable: $state.db.myBrands,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandsTableOrderingComposer(ComposerState(
                $state.db, $state.db.myBrands, joinBuilder, parentComposers)));
    return composer;
  }

  $$MyTagsTableOrderingComposer get tagId {
    final $$MyTagsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.tagId,
        referencedTable: $state.db.myTags,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MyTagsTableOrderingComposer(ComposerState(
                $state.db, $state.db.myTags, joinBuilder, parentComposers)));
    return composer;
  }
}

typedef $$MyImagesTableCreateCompanionBuilder = MyImagesCompanion Function({
  Value<int> id,
  required int brandId,
  required String imagePath,
});
typedef $$MyImagesTableUpdateCompanionBuilder = MyImagesCompanion Function({
  Value<int> id,
  Value<int> brandId,
  Value<String> imagePath,
});

class $$MyImagesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MyImagesTable,
    MyImage,
    $$MyImagesTableFilterComposer,
    $$MyImagesTableOrderingComposer,
    $$MyImagesTableCreateCompanionBuilder,
    $$MyImagesTableUpdateCompanionBuilder> {
  $$MyImagesTableTableManager(_$AppDatabase db, $MyImagesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$MyImagesTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$MyImagesTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int> brandId = const Value.absent(),
            Value<String> imagePath = const Value.absent(),
          }) =>
              MyImagesCompanion(
            id: id,
            brandId: brandId,
            imagePath: imagePath,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required int brandId,
            required String imagePath,
          }) =>
              MyImagesCompanion.insert(
            id: id,
            brandId: brandId,
            imagePath: imagePath,
          ),
        ));
}

class $$MyImagesTableFilterComposer
    extends FilterComposer<_$AppDatabase, $MyImagesTable> {
  $$MyImagesTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get imagePath => $state.composableBuilder(
      column: $state.table.imagePath,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$MyBrandsTableFilterComposer get brandId {
    final $$MyBrandsTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.brandId,
        referencedTable: $state.db.myBrands,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandsTableFilterComposer(ComposerState(
                $state.db, $state.db.myBrands, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$MyImagesTableOrderingComposer
    extends OrderingComposer<_$AppDatabase, $MyImagesTable> {
  $$MyImagesTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get imagePath => $state.composableBuilder(
      column: $state.table.imagePath,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$MyBrandsTableOrderingComposer get brandId {
    final $$MyBrandsTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.brandId,
        referencedTable: $state.db.myBrands,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) =>
            $$MyBrandsTableOrderingComposer(ComposerState(
                $state.db, $state.db.myBrands, joinBuilder, parentComposers)));
    return composer;
  }
}

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$MyBrandsTableTableManager get myBrands =>
      $$MyBrandsTableTableManager(_db, _db.myBrands);
  $$MyTagsTableTableManager get myTags =>
      $$MyTagsTableTableManager(_db, _db.myTags);
  $$MyBrandTagsTableTableManager get myBrandTags =>
      $$MyBrandTagsTableTableManager(_db, _db.myBrandTags);
  $$MyImagesTableTableManager get myImages =>
      $$MyImagesTableTableManager(_db, _db.myImages);
}

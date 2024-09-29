import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'app_database.g.dart';

@DataClassName('MyBrand')
class MyBrands extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get brand => text()();
  TextColumn get subName => text().withDefault(const Constant(''))();
  TextColumn get kana => text().withDefault(const Constant(''))();
  TextColumn get brewery => text().withDefault(const Constant(''))();
  TextColumn get area => text().withDefault(const Constant(''))();
  RealColumn get gorgeous => real().withDefault(const Constant(0.0))();
  RealColumn get mellow => real().withDefault(const Constant(0.0))();
  RealColumn get profound => real().withDefault(const Constant(0.0))();
  RealColumn get clam => real().withDefault(const Constant(0.0))();
  RealColumn get dry => real().withDefault(const Constant(0.0))();
  RealColumn get nimble => real().withDefault(const Constant(0.0))();
  IntColumn get count => integer().withDefault(const Constant(0))();
  TextColumn get type => text().withDefault(const Constant(''))();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
  BoolColumn get favorite => boolean().withDefault(const Constant(false))();
}

@DataClassName('MyTag')
class MyTags extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

@DataClassName('MyBrandTag')
class MyBrandTags extends Table {
  IntColumn get brandId =>
      integer().customConstraint('REFERENCES my_brands(id) NOT NULL')();
  IntColumn get tagId =>
      integer().customConstraint('REFERENCES my_tags(id) NOT NULL')();
}

@DataClassName('MyMemo')
class MyMemos extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get brandId =>
      integer().customConstraint('REFERENCES my_brands(id) NOT NULL')();
  TextColumn get memo => text().withDefault(const Constant(''))();
  TextColumn get title => text().withDefault(const Constant(''))();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get updatedAt => dateTime().withDefault(currentDateAndTime)();
}

@DataClassName('MyImage')
class MyImages extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get brandId =>
      integer().customConstraint('REFERENCES my_brands(id) NOT NULL')();
  TextColumn get imagePath => text()();
}

@DriftDatabase(tables: [MyBrands, MyTags, MyBrandTags, MyImages])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

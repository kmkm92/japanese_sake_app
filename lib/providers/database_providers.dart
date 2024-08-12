import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../database/app_database.dart';

final databaseProvider = Provider<AppDatabase>((ref) {
  return AppDatabase();
});

final myBrandsNotifierProvider =
    StateNotifierProvider<MyBrandsNotifier, List<MyBrand>>((ref) {
  final database = ref.watch(databaseProvider);
  return MyBrandsNotifier(database);
});

class MyBrandsNotifier extends StateNotifier<List<MyBrand>> {
  final AppDatabase _db;

  MyBrandsNotifier(this._db) : super([]) {
    _loadBrands();
  }

  Future<void> _loadBrands() async {
    final brands = await _db.select(_db.myBrands).get();
    state = brands;
  }

  Future<MyBrand?> getBrandById(int id) async {
    final query = _db.select(_db.myBrands)..where((tbl) => tbl.id.equals(id));
    final result = await query.getSingleOrNull();
    return result;
  }

  Future<void> addBrand(MyBrandsCompanion brand) async {
    await _db.into(_db.myBrands).insert(brand);
    _loadBrands();
  }

  Future<void> updateBrand(MyBrand brand) async {
    await _db.update(_db.myBrands).replace(brand);
    _loadBrands();
  }

  Future<void> deleteBrand(int id) async {
    await (_db.delete(_db.myBrands)..where((tbl) => tbl.id.equals(id))).go();
    _loadBrands();
  }
}

// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:japanese_sake_app/database/app_database.dart';
// import 'package:japanese_sake_app/models/db_table.dart';
// import 'package:drift/drift.dart' as drift;

// final databaseProvider = Provider<AppDatabase>((ref) {
//   return AppDatabase();
// });

// final myBrandListProvider = FutureProvider<List<MyBrand>>((ref) async {
//   final database = ref.watch(databaseProvider);
//   final myBrands = await database.select(database.myBrands).get();
//   final myTags = await database.select(database.myTags).get();
//   final myBrandTags = await database.select(database.myBrandTags).get();
//   final myImages = await database.select(database.myImages).get();

//   return myBrands.map((brand) {
//     final brandTagIds = myBrandTags
//         .where((bt) => bt.brandId == brand.id)
//         .map((bt) => bt.tagId)
//         .toList();
//     final brandTags =
//         myTags.where((tag) => brandTagIds.contains(tag.id)).toList();
//     final brandImages =
//         myImages.where((image) => image.brandId == brand.id).toList();
//     return MyBrand(
//       id: brand.id,
//       brand: brand.brand,
//       kana: brand.kana,
//       brewery: brand.brewery,
//       area: brand.area,
//       gorgeous: brand.gorgeous,
//       mellow: brand.mellow,
//       profound: brand.profound,
//       clam: brand.clam,
//       dry: brand.dry,
//       nimble: brand.nimble,
//       memo: brand.memo,
//     );
//   }).toList();
// });

// final addMyBrandProvider = Provider((ref) {
//   final database = ref.watch(databaseProvider);
//   return (MyBrand myBrand) async {
//     await database.into(database.myBrands).insert(
//           MyBrandsCompanion(
//             brand: drift.Value(myBrand.brand),
//             kana: drift.Value(myBrand.kana),
//             brewery: drift.Value(myBrand.brewery),
//             area: drift.Value(myBrand.area),
//             gorgeous: drift.Value(myBrand.gorgeous),
//             mellow: drift.Value(myBrand.mellow),
//             profound: drift.Value(myBrand.profound),
//             clam: drift.Value(myBrand.clam),
//             dry: drift.Value(myBrand.dry),
//             nimble: drift.Value(myBrand.nimble),
//             memo: drift.Value(myBrand.memo),
//           ),
//         );
//   };
// });

// final addMyTagProvider = Provider((ref) {
//   final database = ref.watch(databaseProvider);
//   return (MyTag myTag) async {
//     await database.into(database.myTags).insert(
//           MyTagsCompanion(
//             name: drift.Value(myTag.name),
//           ),
//         );
//   };
// });

// final addMyImageProvider = Provider((ref) {
//   final database = ref.watch(databaseProvider);
//   return (MyImage myImage) async {
//     await database.into(database.myImages).insert(
//           MyImagesCompanion(
//             brandId: drift.Value(myImage.brandId),
//             imagePath: drift.Value(myImage.imagePath),
//           ),
//         );
//   };
// });

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';
// 未使用のインポートを削除
// import 'package:japanese_sake_app/models/brand_detail.dart';

class MySakeDetailsScreen extends ConsumerWidget {
  final int id;

  const MySakeDetailsScreen({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brandDetailsFuture =
        ref.read(myBrandsNotifierProvider.notifier).getBrandById(id);
    return FutureBuilder<MyBrand?>(
      future: brandDetailsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('エラーが発生しました: ${snapshot.error}'));
        } else if (snapshot.hasData) {
          final details = snapshot.data!;
          return Scaffold(
            appBar: AppBar(
              title: Text(details.brand),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '酒蔵: ${details.brewery}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '地域: ${details.area}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'ゴージャス: ${details.gorgeous}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'まろやか: ${details.mellow}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '重厚: ${details.profound}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '穏やか: ${details.clam}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'ドライ: ${details.dry}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '軽快: ${details.nimble}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'メモ: ${details.memo}',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        } else {
          return const Center(child: Text('データが見つかりません'));
        }
      },
    );
  }
}

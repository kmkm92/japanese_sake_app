import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';
import 'package:japanese_sake_app/ui/widgets/radar_chart.dart';
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
                    '銘柄: ${details.brand}',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(height: 8),
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
                    'メモ: ${details.memo}',
                    style: TextStyle(fontSize: 18),
                  ),
                  if (details.gorgeous != 0.0 ||
                      details.mellow != 0.0 ||
                      details.profound != 0.0 ||
                      details.clam != 0.0 ||
                      details.dry != 0.0 ||
                      details.nimble != 0.0)
                    RadarChartWidget(
                      gorgeous: details.gorgeous,
                      mellow: details.mellow,
                      profound: details.profound,
                      clam: details.clam,
                      dry: details.dry,
                      nimble: details.nimble,
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

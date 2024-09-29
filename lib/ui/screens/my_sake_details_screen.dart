import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';
import 'package:japanese_sake_app/ui/screens/add_my_sake_list_screen.dart';
import 'package:japanese_sake_app/ui/widgets/radar_chart.dart';
// 未使用のインポートを削除
// import 'package:japanese_sake_app/models/brand_detail.dart';

class MySakeDetailsScreen extends ConsumerStatefulWidget {
  final int id;

  const MySakeDetailsScreen({Key? key, required this.id}) : super(key: key);

  @override
  _MySakeDetailsScreenState createState() => _MySakeDetailsScreenState();
}

class _MySakeDetailsScreenState extends ConsumerState<MySakeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final brandDetailsFuture =
        ref.read(myBrandsNotifierProvider.notifier).getBrandById(widget.id);
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
              title: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    details.kana,
                    style: TextStyle(fontSize: 12),
                  ),
                  Text(details.brand),
                ],
              ),
              actions: [
                IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () async {
                      final result = await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AddSakeScreen(brand: details),
                        ),
                      );
                      if (result == true && mounted) {
                        // 画面をリロード
                        setState(() {
                          ref
                              .refresh(myBrandsNotifierProvider.notifier)
                              .getBrandById(widget.id);
                        });
                      }
                    }),
              ],
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        details.kana,
                        style: TextStyle(fontSize: 14),
                      ),
                      Row(
                        children: [
                          Text(
                            details.brand,
                            style: TextStyle(fontSize: 24),
                          ),
                          SizedBox(width: 8),
                          Text(details.subName, style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Text(details.brewery, style: TextStyle(fontSize: 20)),
                      SizedBox(width: 8),
                      Text(details.area, style: TextStyle(fontSize: 18)),
                    ],
                  ),
                  SizedBox(height: 20),
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
                  SizedBox(height: 16),
                  Text(
                    'メモ:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text('評価: OK'),
                          subtitle: Text('コメント: OK'),
                          trailing: Text('日付: 2024/09/02'),
                        );
                      },
                    ),
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

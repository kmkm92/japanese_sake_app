import 'package:drift/drift.dart' as drift;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:japanese_sake_app/database/app_database.dart';
import 'package:japanese_sake_app/providers/database_providers.dart';
import 'package:japanese_sake_app/ui/widgets/radar_chart.dart';
import '../../providers/sake_providers.dart';
import 'package:fl_chart/fl_chart.dart';

class SakeDetailsScreen extends ConsumerWidget {
  final int sakeId;

  SakeDetailsScreen({required this.sakeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sakeViewModel = ref.watch(sakeViewModelProvider);
    final isFetching = sakeViewModel.isFetching;

    return Scaffold(
      appBar: AppBar(
        title: Text('Sake Details'),
      ),
      body: isFetching
          ? Center(child: CircularProgressIndicator())
          : sakeViewModel.sakeDetails == null
              ? Center(child: Text('No details available'))
              : Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Text('ID: ${sakeViewModel.sakeDetails?.id}',
                      //     style: TextStyle(fontSize: 24)),
                      SizedBox(height: 8),
                      Text('Name: ${sakeViewModel.sakeDetails?.brand}',
                          style: TextStyle(fontSize: 24)),
                      SizedBox(height: 8),
                      Text('Brewery: ${sakeViewModel.sakeDetails?.brewery}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text('Area: ${sakeViewModel.sakeDetails?.area}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      Text(
                          'Tags: ${sakeViewModel.sakeDetails?.tags?.tagIds.join(", ")}',
                          style: TextStyle(fontSize: 18)),
                      SizedBox(height: 8),
                      if (sakeViewModel.sakeDetails?.chart?.f1 != 0.0 ||
                          sakeViewModel.sakeDetails?.chart?.f2 != 0.0 ||
                          sakeViewModel.sakeDetails?.chart?.f3 != 0.0 ||
                          sakeViewModel.sakeDetails?.chart?.f4 != 0.0 ||
                          sakeViewModel.sakeDetails?.chart?.f5 != 0.0 ||
                          sakeViewModel.sakeDetails?.chart?.f6 != 0.0)
                        RadarChartWidget(
                          gorgeous: sakeViewModel.sakeDetails?.chart?.f1 ?? 0.0,
                          mellow: sakeViewModel.sakeDetails?.chart?.f2 ?? 0.0,
                          profound: sakeViewModel.sakeDetails?.chart?.f3 ?? 0.0,
                          clam: sakeViewModel.sakeDetails?.chart?.f4 ?? 0.0,
                          dry: sakeViewModel.sakeDetails?.chart?.f5 ?? 0.0,
                          nimble: sakeViewModel.sakeDetails?.chart?.f6 ?? 0.0,
                        ),
                      SizedBox(height: 20),
                      ButtonBar(
                        alignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            child: Text('追加'),
                            onPressed: () async {
                              final brand = sakeViewModel.sakeDetails;
                              if (brand != null) {
                                await ref
                                    .read(myBrandsNotifierProvider.notifier)
                                    .addBrand(
                                      MyBrandsCompanion(
                                        id: drift.Value(brand.id),
                                        brand: drift.Value(brand.brand),
                                        kana: drift.Value(""),
                                        brewery: drift.Value(brand.brewery),
                                        area: drift.Value(brand.area),
                                        gorgeous:
                                            drift.Value(brand.chart?.f1 ?? 0.0),
                                        mellow:
                                            drift.Value(brand.chart?.f2 ?? 0.0),
                                        profound:
                                            drift.Value(brand.chart?.f3 ?? 0.0),
                                        clam:
                                            drift.Value(brand.chart?.f4 ?? 0.0),
                                        dry:
                                            drift.Value(brand.chart?.f5 ?? 0.0),
                                        nimble:
                                            drift.Value(brand.chart?.f6 ?? 0.0),
                                        memo: drift.Value(""),
                                      ),
                                    );
                                Navigator.pop(context); // 一覧画面に戻る
                              }
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
    );
  }
}

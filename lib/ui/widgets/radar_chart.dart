import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:japanese_sake_app/database/app_database.dart';

class RadarChartWidget extends StatelessWidget {
  final double gorgeous;
  final double mellow;
  final double profound;
  final double clam;
  final double dry;
  final double nimble;

  const RadarChartWidget(
      {Key? key,
      required this.gorgeous,
      required this.mellow,
      required this.profound,
      required this.clam,
      required this.dry,
      required this.nimble})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 250,
      child: RadarChart(
        RadarChartData(
          ticksTextStyle: const TextStyle(
            color: Colors.transparent,
          ),
          getTitle: (index, angle) {
            switch (index) {
              case 0:
                return const RadarChartTitle(text: '華やか');
              case 1:
                return const RadarChartTitle(text: '芳醇');
              case 2:
                return const RadarChartTitle(text: '重厚');
              case 3:
                return const RadarChartTitle(text: '穏やか');
              case 4:
                return const RadarChartTitle(text: 'ドライ');
              case 5:
                return const RadarChartTitle(text: '軽快');
              default:
                return const RadarChartTitle(text: '');
            }
          },
          titlePositionPercentageOffset: 0.1,
          tickCount: 5,
          dataSets: [
            RadarDataSet(
              dataEntries: [
                RadarEntry(value: gorgeous),
                RadarEntry(value: mellow),
                RadarEntry(value: profound),
                RadarEntry(value: clam),
                RadarEntry(value: dry),
                RadarEntry(value: nimble),
              ],
            ),
            RadarDataSet(
              dataEntries: [
                const RadarEntry(value: 1.0),
                const RadarEntry(value: 1.0),
                const RadarEntry(value: 1.0),
                const RadarEntry(value: 0.0),
                const RadarEntry(value: 0.0),
                const RadarEntry(value: 0.0),
              ],
              fillColor: Colors.transparent,
              borderColor: Colors.transparent,
            ),
          ],
          radarBackgroundColor: Colors.transparent,
          radarBorderData: const BorderSide(color: Colors.grey),
          tickBorderData: const BorderSide(color: Colors.grey, width: 0.5),
          gridBorderData: const BorderSide(color: Colors.grey, width: 0.5),
          radarShape: RadarShape.polygon,
        ),
      ),
    );
  }
}

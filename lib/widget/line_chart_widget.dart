import 'package:ana/fl_chart.dart';
import 'package:ana/widget/line_titles.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  final List<Color> gradientColors = [
    const Color(0xffee1d23),
    const Color(0xffee1d23),
    const Color(0xffa50d12),
    const Color(0xffee1d23),
  ];

  @override
  Widget build(BuildContext context) => LineChart(
        LineChartData(
          minX: 0,
          maxX: 9,
          minY: 0,
          maxY: 6000,
          titlesData: LineTitles.getTitleData(),
          gridData: FlGridData(
            show: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
            drawVerticalLine: true,
            getDrawingVerticalLine: (value) {
              return FlLine(
                color: const Color(0xff37434d),
                strokeWidth: 1,
              );
            },
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: const Color(0xff00497b), width: 1),
          ),
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 1200),
                FlSpot(1, 4850),
                FlSpot(2, 4725),
                FlSpot(3, 4205),
                FlSpot(4, 4100),
                FlSpot(5, 3982),
                FlSpot(6, 3200),
                FlSpot(7, 2900),
                FlSpot(8, 2763),
                FlSpot(9, 2600),
              ],
              isCurved: true,
              colors: gradientColors,
              barWidth: 4,
              // dotData: FlDotData(show: false),
              belowBarData: BarAreaData(
                show: true,
                colors: gradientColors
                    .map((color) => color.withOpacity(0.4))
                    .toList(),
              ),
            ),
          ],
        ),
      );
}

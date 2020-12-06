import 'package:ana/fl_chart.dart';
import 'package:flutter/material.dart';

class LineTitles {
  static getTitleData() => FlTitlesData(
        show: true,
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 35,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xffcccccc),
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 0:
                return '3';
              case 1:
                return '6';
              case 2:
                return '9';
              case 3:
                return '12';
              case 4:
                return '15';
              case 5:
                return '18';
              case 6:
                return '21';
              case 7:
                return '24';
              case 8:
                return '27';
              case 9:
                return '30';
            }
            return '';
          },
          margin: 8,
        ),
        leftTitles: SideTitles(
          showTitles: true,
          getTextStyles: (value) => const TextStyle(
            color: Color(0xffcccccc),
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          getTitles: (value) {
            switch (value.toInt()) {
              case 4100:
                return '4100';
              case 2600:
                return '2600';
              case 1200:
                return '1200';
            }
            return '';
          },
          reservedSize: 35,
          margin: 12,
        ),
      );
}

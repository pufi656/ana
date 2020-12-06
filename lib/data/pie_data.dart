import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Esentiale 1658 RON', percent: 72, color: const Color(0xff0293ee)),
    Data(name: 'Non-Esentiale 642 RON', percent: 28, color: const Color(0xfff8b250)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}

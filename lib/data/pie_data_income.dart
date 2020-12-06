import 'package:flutter/material.dart';

class PieData {
  static List<Data> data = [
    Data(name: 'Utilitati', percent: 60, color: const Color(0xff0293ee)),
    Data(name: 'Restaurant', percent: 5, color: const Color(0xfff8b250)),
    Data(name: 'Sanatate', percent: 5, color: Colors.black),
    Data(name: 'Divertisment', percent: 23, color: const Color(0xff13d38e)),
    Data(name: 'Supermarket', percent: 7, color: const Color(0xff00eefe)),
  ];
}

class Data {
  final String name;

  final double percent;

  final Color color;

  Data({this.name, this.percent, this.color});
}
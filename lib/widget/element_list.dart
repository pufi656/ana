import 'package:flutter/material.dart';

class ElementList extends StatelessWidget {

  final List<int> cheltuieli;

  ElementList(
        @required this.cheltuieli
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff006bb3).withOpacity(0.4),
        child: Column(
      children: <Widget>[
        Text(
          'data',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 1.5,
            color: Colors.white,
          ),
        ),
        Text(
          'suma',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 1.5,
            color: Colors.white,
          ),
        ),
        Text(
          'loc_de_cheltuire',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 1.5,
            color: Colors.white,
          ),
        ),
        const Divider(
          color: Color(0xff003d66),
          height: 20,
          thickness: 2,
          endIndent: 0,
        )],
    ));
  }
}
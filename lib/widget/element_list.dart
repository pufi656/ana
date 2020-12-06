import 'package:flutter/material.dart';

class ElementList extends StatelessWidget {

  final int cheltuieli;

  ElementList(
        @required this.cheltuieli
      );

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0xff006bb3).withOpacity(0.4),
        child: Column(
      children: <Widget>[
        Container(
            margin: EdgeInsets.only(right: 30),
          child: Align(
            alignment: Alignment.centerRight,
            child:Text(
              '12.12.2012',
              style: new TextStyle(
                fontSize: 20.0,
                height: 1.5,
                color: Colors.white,
              ),
            )
          )
        ),
        Text(
          '$cheltuieli',
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
          height: 0,
          thickness: 2,
          endIndent: 0,
        )],
    ));
  }
}
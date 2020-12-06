import 'package:flutter/material.dart';

class ElementList extends StatelessWidget {

  final int cheltuieli;
  final String data;
  final String loc;
  final String categorie;

  ElementList({
    @required this.cheltuieli,
    @required this.data,
    @required this.loc,
    @required this.categorie
  }
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
              '$data',
              style: new TextStyle(
                fontSize: 20.0,
                height: 1.5,
                color: Colors.white,
              ),
            )
          )
        ),
        Text(
          cheltuieli > 0 ? '+$cheltuieli RON' : '$cheltuieli RON',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 1.5,
            color: Colors.white,
          ),
        ),
        Text(
          '$loc',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 1.5,
            color: Colors.white,
          ),
        ),
        Text(
          '$categorie',
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
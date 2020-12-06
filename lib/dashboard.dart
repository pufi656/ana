import 'package:flutter/material.dart';
import 'widget/line_chart_widget.dart';
import 'widget/list.dart';

class Dashboard extends StatelessWidget {


  final List<Color> _colors = [
    Color(0xff001f33),
    Color(0xff001f33),
    Color(0xff00497b),
  ];
  final List<double> _stops = [0.0, 0.2, 0.4];

  Dashboard();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: FractionalOffset.topCenter,
            end: FractionalOffset.bottomCenter,
            colors: _colors,
            stops: _stops,
          )
        ),
        child: Column(
        children: <Widget>[
        Transform.scale(
          scale: 1,
          child: Container(
            width: size.width * 1,
            height: size.height * 0.285,
            margin: EdgeInsets.only(),
            padding: EdgeInsets.only(top: size.height * 0.07, right: size.width * 0.1),
            child: LineChartWidget(),
          ),
        ),
        Transform.scale(
          scale: 1,
          child: Container(
            height: size.height * 0.12,
            child: Stack(children: <Widget>[
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(top: 15, left: 50, right: 50, bottom: 15),
                padding: EdgeInsets.only(top: 30),
                height: size.height * 0.12,
                decoration: BoxDecoration(
                  color: Color(0xffee1d23),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                    'Balance: xxxxx RON',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 25.0,
                      height: 0.45,
                      color: Colors.white,
                    ),
                ),
              ),
            ])
          )
        ),
        Transform.scale(
          scale: 1,
          child: Container(
            width: double.infinity,
            height: 392,
            child: VerticalList([15, 20, 25, 30, 35, 40]),
          ),
        ),
    ]),
    );
  }
}
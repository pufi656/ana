import 'package:flutter/material.dart';
import 'cool_animation.dart';
import 'element_list.dart';

class VerticalList extends StatelessWidget {

  final List<int> _cheltuieli;
  VerticalList(
        @required this._cheltuieli,
      );


  @override
  Widget build(BuildContext context) {
    final title = 'Horizontal List';
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          height: 392.0,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Transform.scale(
                scale: 0.8,
                child: Container(
                  width: 300,
                  height: 200,
                  child: CoolAnimation(),
                ),
              ),
              const Divider(
                color: Color(0xff003d66),
                height: 0,
                thickness: 2,
                endIndent: 0,
              ),
              Column(children: [
                for (var i in _cheltuieli) ElementList(i)
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
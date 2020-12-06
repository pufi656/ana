import 'package:flutter/material.dart';
import 'cool_animation.dart';
import 'element_list.dart';

class VerticalList extends StatelessWidget {

  final List<int> cheltuieli;
  final List<String> data;
  final List<String> loc;
  final List<String> categorie;
  VerticalList({
        @required this.cheltuieli,
        @required this.data,
        @required this.loc,
        @required this.categorie,
}
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
          height: size.height * 0.52,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Transform.scale(
                scale: 0.8,
                child: Container(
                  width: 300,
                  height: size.height * 0.25,
                  child: CoolAnimation(),
                ),
              ),
              Text('Tine-o tot asa!',
          textAlign: TextAlign.center,
          style: new TextStyle(
            fontSize: 25.0,
            height: 0.45,
            color: Colors.white,
          ),),
              const Divider(
                color: Color(0xff003d66),
                height: 0,
                thickness: 2,
                endIndent: 0,
              ),
              Column(children: [
                for (int i = 0; i < cheltuieli.length; i++) ElementList(
                  cheltuieli: cheltuieli[i],
                  data: data[i],
                  loc: loc[i],
                  categorie: categorie[i],
                )
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
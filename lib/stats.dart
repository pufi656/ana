import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'widget/line_chart_widget.dart';
import 'page/pie_chart_page.dart';
import 'page/pie_chart_page_income.dart';

class Stats extends StatelessWidget {

  Stats();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final List<Widget> graphs = [
      Transform.scale(
        scale: 0.8,
        child: Container(
          width: size.width * 1,
          height: size.height * 0.35,
          margin: EdgeInsets.only(),
          padding: EdgeInsets.only(right: size.width * 0.1),
          child: PieChartPageIncome(),
        ),
      ),
      Transform.scale(
        scale: 0.8,
        child: Container(
          width: size.width * 1,
          height: size.height * 0.35,
          margin: EdgeInsets.only(),
          padding: EdgeInsets.only(right: size.width * 0.1),
          child: PieChartPage(),
        ),
      ),
      Transform.scale(
        scale: 1.15,
        child: Container(
          width: size.width * 1,
          height: size.height * 0.35,
          margin: EdgeInsets.only(bottom: size.width * 0.4),
          padding: EdgeInsets.only(top: size.height * 0.07, right: size.width * 0.05),
          child: LineChartWidget(),
        ),
      )
    ];
    return Container(
        color: Color(0xff00497b),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height * 0.1, bottom: size.height * 0.03),
              width: double.infinity,
              height: size.height * 0.15,
              color: Color(0xffee1d23),
            ),
            CarouselSlider(
              options: CarouselOptions(height: size.height * 0.6),
              items: [0,1,2].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        decoration: BoxDecoration(
                            color: Colors.transparent
                        ),
                        child: graphs[i]
                    );
                  },
                );
              }).toList(),
            )
          ],
        )
    );
  }
}
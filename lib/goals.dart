import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Goals extends StatelessWidget {

  Goals();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xff00497b),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: size.height * 0.1),
              width: double.infinity,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Color(0xffee1d23),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: <Widget>[
                  Text(
                'Goal 1:',
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontSize: 35.0,
                  height: size.height * 0.002,
                  color: Colors.white,
                ),
              ),
                  Text(
                    'Cheltuieli nonesentiale lunare\nmai mici de 500 RON',
                    textAlign: TextAlign.center,
                    style: new TextStyle(
                      fontSize: 25.0,
                      height: size.height * 0.002,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.25, top: size.height * 0.005),
                      child: LinearPercentIndicator(
                    width: 200.0,
                    lineHeight: 8.0,
                    percent: 0.9,
                    progressColor: Colors.blue,
                  )),]),
            ),
            Container(
              child: Column(
                  children: <Widget>[
                    Text(
                      'Goal 2:',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 35.0,
                        height: size.height * 0.002,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Economii lunare de peste 300 RON',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 25.0,
                        height: size.height * 0.002,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: size.width * 0.25, top: size.height * 0.045),
                        child: LinearPercentIndicator(
                          width: 200.0,
                          lineHeight: 8.0,
                          percent: 0.6,
                          progressColor: Colors.lightGreen,
                        )),]),
              margin: EdgeInsets.only(top: size.height * 0.05),
              width: double.infinity,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Color(0xffee1d23),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              child: Column(
                  children: <Widget>[
                    Text(
                      'Goal 3:',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 35.0,
                        height: size.height * 0.002,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Crestere de 10% a venitului\nactiv in anul curent',
                      textAlign: TextAlign.center,
                      style: new TextStyle(
                        fontSize: 25.0,
                        height: size.height * 0.002,
                        color: Colors.white,
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(left: size.width * 0.25, top: size.height * 0.007),
                        child: LinearPercentIndicator(
                          width: 200.0,
                          lineHeight: 8.0,
                          percent: 0.2,
                          progressColor: Colors.purple,
                        )),]),
              margin: EdgeInsets.only(top: size.height * 0.05),
              width: double.infinity,
              height: size.height * 0.2,
              decoration: BoxDecoration(
                color: Color(0xffee1d23),
                borderRadius: BorderRadius.circular(20),
              ),
            )
          ],
        )
    );
  }
}
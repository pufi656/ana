import 'dart:math';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widget/cool_animation.dart';
import 'dart:math';
import 'widget/cool_animation_rng.dart';

class Cards extends StatelessWidget {

  Cards();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
        color: Color(0xff00497b),
        child: Column(
        children: <Widget>[
          Transform.scale(
              scale: 1,
              child: Container(
                  margin: EdgeInsets.only(top: size.height * 0.2),
                  child: CarouselSlider(
                    options: CarouselOptions(height: size.height * 0.7),
                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Column(children: <Widget>[
                              Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 5.0),
                              decoration: BoxDecoration(
                                  color: Color(0xffee1d23),
                                  borderRadius: BorderRadius.circular(20)
                              ),
                              child: Column(
                                  children: <Widget>[
                                    Container(
                                      height: 20,
                                      margin: EdgeInsets.only(top: 15, left: 50, right: 50),
                                      child: Text(
                                        'Card $i',
                                          textAlign: TextAlign.center,
                                        style: GoogleFonts.heebo(
                                          textStyle: TextStyle(
                                            fontSize: 16.0,
                                          )
                                        )
                                      )
                                    ),
                                    Container(
                                        margin: EdgeInsets.only(top: 87, bottom: 30),
                                      padding: EdgeInsets.only(top: 0),
                                      color: Color(0xffadadad),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          'xxxx xxxx xxxx ' + Random().nextInt(9).toString() + Random().nextInt(9).toString() + Random().nextInt(9).toString() + Random().nextInt(9).toString(),
                                          textAlign: TextAlign.center,
                                          style: GoogleFonts.heebo(
                                            textStyle: TextStyle(
                                              fontSize: 25.0,
                                            )
                                          )
                                        )
                                      )
                                    ),
                                  ]
                              )
                              ),
                            Container(
                              width: 300,
                              height: size.height * 0.42,
                              child: CoolAnimationRNG(),
                            )
                          ]);
                        },
                      );
                    }).toList(),
                  ),
              )
          ),
        ],
      )
    );
  }
}
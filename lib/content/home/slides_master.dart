import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihanflutter/content/home/menus.dart';
import 'package:latihanflutter/content/home/news_slide.dart';

import 'package:latihanflutter/src/screensize.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:latihanflutter/content/home/news_slide.dart' show NewsSlide;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _currentIndex = 0;
  List cardList = [
    [
      'assets/images/slide/slide1.jpg',
      'RSU Ponorogoo',
      'Rumah Sakit Umum Ponorogo'
    ],
    [
      'assets/images/slide/slide2.png',
      'Vaksin Covid 19',
      'Proses Vaksin ke Pasien'
    ],
    [
      'assets/images/slide/slide3.png',
      'Fasilitas RS',
      'Fasilitas yang ada di Rumah Sakit Ponorogo'
    ],
  ];
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color.fromRGBO(8, 47, 107, 1),
              height: screenSize.blockVertical * 55,
              width: screenSize.blockHorizontal * 100,
            ),
            Container(
              margin: EdgeInsets.only(top: screenSize.blockVertical * 8),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: screenSize.blockHorizontal * 60,
                  aspectRatio: 20,
                  viewportFraction: 1.0,
                  disableCenter: true,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.scale,
                  autoPlayCurve: Curves.easeOut,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 5),
                ),
                items: cardList.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(
                            horizontal: screenSize.blockHorizontal * 2),
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                i[0],
                                fit: BoxFit.cover,
                                alignment: AlignmentDirectional.center,
                                height: screenSize.blockVertical * 40,
                                width: screenSize.blockHorizontal * 100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: screenSize.blockVertical * 20,
                                right: screenSize.blockHorizontal * 50,
                              ),
                              child: Container(
                                // alignment: Alignment.centerLeft,
                                // padding: EdgeInsets.only(left: 20, top: 10),
                                // margin: EdgeInsets.only(bottom: 20, top: 20),
                                padding: EdgeInsets.only(
                                    left: screenSize.blockHorizontal * 4,
                                    top: screenSize.blockVertical * 1,
                                    right: screenSize.blockHorizontal * 1),

                                margin: EdgeInsets.symmetric(
                                    vertical: screenSize.blockVertical * 2),

                                decoration: BoxDecoration(
                                    color: Color.fromRGBO(23, 32, 42, 99)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(i[1],
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.bold)),
                                    Container(
                                      child: Text(i[2],
                                          maxLines: 2,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.normal)),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            NewsSlide(),
            Menus(),
          ],
        ),
      ),
    );
  }
}

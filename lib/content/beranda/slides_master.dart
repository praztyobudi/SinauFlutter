import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihanflutter/content/beranda/menus.dart';
import 'package:latihanflutter/content/beranda/berita_slide.dart';

import 'package:latihanflutter/src/screensize.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:latihanflutter/content/beranda/berita_slide.dart'
    show NewsSlide;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // int _currentIndex = 0;
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
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.only(bottomRight: Radius.circular(40)),
                color: Colors.blue[600],
              ),
              // color: Color.fromRGBO(8, 47, 107, 1),
              height: ScreenSize.blockVertical * 55,
              width: ScreenSize.blockHorizontal * 100,
            ),
            Container(
              margin: EdgeInsets.only(top: ScreenSize.blockVertical * 5.5),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: ScreenSize.blockHorizontal * 65,
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
                            horizontal: ScreenSize.blockHorizontal * 2,
                            vertical: ScreenSize.blockVertical * 1),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 2), //x,y
                            ),
                          ],
                        ),
                        child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                i[0],
                                fit: BoxFit.cover,
                                alignment: AlignmentDirectional.center,
                                height: ScreenSize.blockVertical * 40,
                                width: ScreenSize.blockHorizontal * 100,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                top: ScreenSize.blockVertical * 21,
                                right: ScreenSize.blockHorizontal * 50,
                              ),
                              child: Container(
                                // alignment: Alignment.centerLeft,
                                // padding: EdgeInsets.only(left: 20, top: 10),
                                // margin: EdgeInsets.only(bottom: 20, top: 20),
                                padding: EdgeInsets.only(
                                    left: ScreenSize.blockHorizontal * 4,
                                    top: ScreenSize.blockVertical * 1,
                                    right: ScreenSize.blockHorizontal * 1),

                                margin: EdgeInsets.symmetric(
                                    vertical: ScreenSize.blockVertical * 2),
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

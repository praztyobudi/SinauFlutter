import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:latihanflutter/content/beranda/menus.dart';
import 'package:latihanflutter/content/beranda/berita_slide.dart';
import 'package:sizer/sizer.dart';
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
    return Sizer(
      builder: (context, orientation, screenType) {
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
                  height: 60.h,
                  // width: ScreenSize.blockHorizontal * 100,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 3.5.h,
                  ),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      height: 45.h,
                      aspectRatio: 20,
                      viewportFraction: 1.0,
                      disableCenter: true,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.scale,
                      autoPlayCurve: Curves.easeOut,
                      autoPlay: false,
                      autoPlayInterval: Duration(seconds: 5),
                    ),
                    items: cardList.map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(
                              horizontal: 2.w,
                              vertical: 4.h,
                            ),
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
                                    height: 40.h,
                                    width: 100.w,
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                      top: 20.5.h,
                                      right: 50.w,
                                      bottom: 5.h,
                                    ),
                                    child: Container(
                                      alignment: Alignment.centerLeft,
                                      padding: EdgeInsets.only(
                                        left: 2.w,
                                        top: 2.h,
                                      ),
                                      decoration: BoxDecoration(
                                          color:
                                              Color.fromRGBO(23, 32, 42, 99)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(i[1],
                                              maxLines: 1,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18.0.sp,
                                                  fontWeight: FontWeight.bold)),
                                          Container(
                                            child: Text(i[2],
                                                maxLines: 2,
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 9.0.sp,
                                                    fontWeight:
                                                        FontWeight.normal)),
                                          ),
                                        ],
                                      ),
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
      },
    );
  }
}

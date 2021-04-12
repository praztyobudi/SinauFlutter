import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihanflutter/src/screensize.dart';
import 'package:carousel_slider/carousel_slider.dart';

class NewsSlide extends StatefulWidget {
  @override
  _NewsSlideState createState() => _NewsSlideState();
}

class _NewsSlideState extends State<NewsSlide> {
  List cardList = [
    ['1 Apr 2021', 'Jadwal dokter berubah', 'Jam 16.00 ke jam 20.00'],
    ['2 Apr 2021', 'Tutup Lebih Awal', 'Jam 16.00 ke jam 20.00'],
    ['3 Apr 2021', 'Farmasi Sedang Tutup', 'Jam 16.00 ke jam 20.00'],
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
    return Stack(
      children: [
        Container(
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.symmetric(
            horizontal: ScreenSize.blockHorizontal * 5,
          ),
          child: Text(
            'Berita Terbaru',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontSize: 20,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: ScreenSize.blockVertical * 48),
          child: CarouselSlider(
            options: CarouselOptions(
              height: ScreenSize.blockVertical * 15,
              aspectRatio: 20,
              viewportFraction: 1.0,
              disableCenter: true,
              enlargeCenterPage: true,
              autoPlay: false,
              autoPlayInterval: Duration(seconds: 5),
              enableInfiniteScroll: false,
            ),
            items: cardList.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(
                        horizontal: ScreenSize.blockHorizontal * 5,
                        vertical: ScreenSize.blockVertical * 1),
                    padding: EdgeInsets.only(top: ScreenSize.blockVertical * 1),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 2), //x,y
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: ScreenSize.blockVertical * 1,
                            left: ScreenSize.blockHorizontal * 4,
                          ),
                          child: Icon(
                            Icons.error_outline,
                            color: Colors.redAccent,
                            size: 40,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(
                                  left: ScreenSize.blockHorizontal * 2,
                                  top: ScreenSize.blockVertical * 1.2),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 1),
                                    child: Text(i[0],
                                        maxLines: 1,
                                        style: TextStyle(
                                            color: Colors.black54,
                                            fontSize: 14.0,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                  Text(i[1],
                                      maxLines: 1,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.bold)),
                                  Text(i[2],
                                      maxLines: 2,
                                      style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.normal)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}

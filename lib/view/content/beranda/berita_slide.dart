import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:latihanflutter/view/content/beranda/berita_semua_slide.dart';
import 'package:sizer/sizer.dart';

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
          alignment: Alignment.centerLeft,
          margin: EdgeInsets.only(
            left: 5.w,
          ),
          padding: EdgeInsets.only(
            bottom: 2.h,
          ),
          child: Text(
            'Berita Terbaru',
            style: GoogleFonts.roboto(
              color: Colors.white,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
              fontSize: 14.sp,
            ),
          ),
        ),
        Container(
          alignment: Alignment.centerRight,
          margin: EdgeInsets.only(
            right: 3.w,
          ),
          padding: EdgeInsets.only(
            bottom: 1.h,
          ),
          child: TextButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BeritaSemuaSlide(),
                ),
              );
            },
            child: Text(
              'Lihat Semua',
              style: GoogleFonts.openSans(
                color: Colors.white,
                fontSize: 11.sp,
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 51.h),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 16.h,
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
                      horizontal: 5.w,
                      vertical: 1.w,
                    ),
                    padding: EdgeInsets.only(top: 1.5.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 2,
                          offset: Offset(0, 1), //x,y
                        )
                      ],
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            bottom: 1.h,
                            left: 4.w,
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
                                left: 2.w,
                                top: 1.2.h,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 1.h),
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

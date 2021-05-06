import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  var androidVersions = [
    "Info Lowongan Kerja Februari 2020",
    "Kunjungan Direktur BPJS Kesehatan Prof. Dr. dr. Fachmi Idris, M.Kes. ke RSU 'Aisyiyah Ponorogo",
    "Peringatan Hari Raya Idul Adha 1440 H Rsu Aisyiyah Ponorogo Mengadakan Pemeriksaan Dan Pengobatan",
    "Peringatan Hari Raya Idul Adha Tahun 1440 H",
    "RSU Aisyiyah Ponorogo Aktif Dalam Kegiatan Ekspedisi Destana Tsunami Jawa Timur",
    "Peringatan Pekan Asi Nasional Se Dunia Tahun 2019"
  ];
  var text = [
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie",
  ];
  var gambar = [
    'assets/images/slide/slide1.jpg',
    'assets/images/slide/slide2.png',
    'assets/images/slide/slide3.png',
    'assets/images/slide/slide1.jpg',
    'assets/images/slide/slide2.png',
    'assets/images/slide/slide3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Terbaru'),
      ),
      body: ListView.builder(
        // padding: EdgeInsets.only(top: 1.h),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return SimpleDialog(
                    children: [
                      Container(
                        height: 50.h,
                        width: 10.w,
                        child: Image.asset(gambar[index]),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        child: Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic",
                          textAlign: TextAlign.justify,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 20,
                          style: GoogleFonts.roboto(
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ],
                  );
                },
              );
            },
            child: Card(
              margin: EdgeInsets.all(1.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: EdgeInsets.all(1.h),
                    width: 100.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5),
                        topRight: Radius.circular(5),
                      ),
                      image: DecorationImage(
                          image: AssetImage(
                            gambar[index],
                          ),
                          fit: BoxFit.fitWidth),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 1.h),
                    child: ListTile(
                      title: Padding(
                        padding: EdgeInsets.only(bottom: 1.h),
                        child: Text(
                          androidVersions[index],
                          style: GoogleFonts.roboto(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      subtitle: Text(text[index]),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

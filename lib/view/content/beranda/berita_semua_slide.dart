import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class BeritaSemuaSlide extends StatefulWidget {
  @override
  _BeritaSemuaSlideState createState() => _BeritaSemuaSlideState();
}

class _BeritaSemuaSlideState extends State<BeritaSemuaSlide> {
  var androidVersions = [
    "Jadwal Dokter Berubah",
    "Tutup Lebih Awal",
    "Farmasi Sedang Tutup",
    "Daftar Perubahan Jadwal Dokter",
    "Lorem Ipsum is simply dummy text",
    "Lorem Ipsum is simply dummy text"
  ];
  var text = [
    "Hari ini, 24 Apr 21",
    "Hari ini, 24 Apr 21",
    "Hari ini, 24 Apr 21",
    "Hari ini, 24 Apr 21",
    "Hari ini, 24 Apr 21",
    "Hari ini, 24 Apr 21",
  ];
  var keterangan = [
    'Pada Jam 16.00 ke jam 20.00',
    'Lorem Ipsum is simply dummy text',
    'Lorem Ipsum is simply dummy text',
    'Lorem Ipsum is simply dummy text',
    'Lorem Ipsum is simply dummy text',
    'Lorem Ipsum is simply dummy text',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Berita'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.only(
          top: 2.h,
          bottom: 2.h,
        ),
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                androidVersions[index],
                style: GoogleFonts.roboto(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              subtitle: Column(
                children: [
                  Container(
                    height: 3.5.h,
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(
                      right: 43.w,
                      top: 1.h,
                      bottom: 1.h,
                    ),
                    padding: EdgeInsets.only(
                      left: 1.w,
                    ),
                    color: Colors.redAccent,
                    child: Text(
                      text[index],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(keterangan[index],
                        style: GoogleFonts.roboto(
                          fontSize: 18.sp,
                        )),
                  )
                ],
              ),
              leading: Icon(
                CupertinoIcons.exclamationmark_triangle,
                size: 50,
                color: Colors.redAccent,
              ),
            ),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihanflutter/src/screensize.dart';
import 'package:flutter/cupertino.dart';

class Menus extends StatefulWidget {
  @override
  _MenusState createState() => _MenusState();
}

class _MenusState extends State<Menus> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: DraggableScrollableSheet(
            initialChildSize: 0.4,
            minChildSize: 0.4,
            maxChildSize: 1,
            builder: (BuildContext context, myController) {
              return Container(
                margin: EdgeInsets.only(top: ScreenSize.blockVertical * 7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  controller: myController,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: AlignmentDirectional.centerStart,
                        margin: EdgeInsets.only(
                            top: ScreenSize.blockVertical * 2,
                            left: ScreenSize.blockHorizontal * 5),
                        child: Text(
                          'Layanan Kami',
                          style: GoogleFonts.openSans(
                            color: Colors.black54,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          left: ScreenSize.blockHorizontal * 5,
                          top: ScreenSize.blockVertical * 3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: ScreenSize.blockVertical * 19,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      CupertinoIcons.person_crop_circle,
                                      size: 50,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Pasien',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: ScreenSize.blockHorizontal * 6),
                              height: ScreenSize.blockVertical * 19,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      CupertinoIcons.calendar_today,
                                      size: 50,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Jadwal Dokter',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          left: ScreenSize.blockHorizontal * 5,
                          top: ScreenSize.blockVertical * 3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.query_builder,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Antrian Pasien',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: ScreenSize.blockHorizontal * 6),
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.bathtub_rounded,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Cek Kamar',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          left: ScreenSize.blockHorizontal * 5,
                          top: ScreenSize.blockVertical * 3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.help_center_rounded,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Bantuan',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: ScreenSize.blockHorizontal * 6),
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.saved_search,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Survey',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        margin: EdgeInsets.only(
                          left: ScreenSize.blockHorizontal * 5,
                          top: ScreenSize.blockVertical * 3,
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.tag_faces,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Tips Kesehatan',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: ScreenSize.blockHorizontal * 6),
                              height: ScreenSize.blockVertical * 15,
                              width: ScreenSize.blockHorizontal * 42,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        bottom: ScreenSize.blockVertical * 2),
                                    child: Icon(
                                      Icons.accessibility_new_sharp,
                                      size: 40,
                                      color: Colors.blue[600],
                                    ),
                                  ),
                                  Text('Lain-Lain',
                                      style: GoogleFonts.openSans(
                                        fontSize: 18,
                                        color: Colors.black54,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
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
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

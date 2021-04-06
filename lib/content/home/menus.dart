import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihanflutter/src/screensize.dart';

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
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.symmetric(
            horizontal: screenSize.blockHorizontal * 5,
            vertical: screenSize.blockVertical * 5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: screenSize.blockVertical * 22,
                width: screenSize.blockHorizontal * 41,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.person_pin_sharp,
                      size: 70,
                      color: Colors.blue[900],
                    ),
                    Text('Pasien',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
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
                margin: EdgeInsets.only(left: screenSize.blockHorizontal * 8),
                height: screenSize.blockVertical * 22,
                width: screenSize.blockHorizontal * 41,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.calendar_today,
                      size: 70,
                      color: Colors.blue[900],
                    ),
                    Text('Jadwal Dokter',
                        style: GoogleFonts.openSans(
                          fontSize: 18,
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
        )
      ],
    );
  }
}

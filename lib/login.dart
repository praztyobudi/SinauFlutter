import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:latihanflutter/src/screensize.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:latihanflutter/dashboard.dart';
import 'package:statusbar/statusbar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    StatusBar.color(Color.fromRGBO(18, 99, 221, 1.0));
  }

  @override
  Widget build(BuildContext context) {
    screenSize().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration:
                  BoxDecoration(color: Color.fromRGBO(18, 99, 221, 1.0)),
              child: Container(
                //gambar
                height: screenSize.blockVertical * 70,
                width: screenSize.blockHorizontal * 100,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(8, 47, 107, 1),
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.2), BlendMode.dstATop),
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/gb1.png")),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3), //x,y
                    )
                  ],
                ),
                margin: EdgeInsetsDirectional.only(
                    bottom: screenSize.blockVertical * 35),
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Center(
                  child: Container(
                    height: screenSize.blockVertical * 53,
                    width: screenSize.blockHorizontal * 80,
                    margin: EdgeInsets.only(top: screenSize.blockVertical * 20),
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(0, 2), //x,y
                          )
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.only(bottom: screenSize.blockVertical * 18),
                  child: Text(
                    'Nomor ARM',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      bottom: screenSize.blockVertical * 1,
                      left: screenSize.blockHorizontal * 18,
                      right: screenSize.blockHorizontal * 18),
                  child: TextField(
                    maxLength: max(16, 16),
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.list),
                      hintText: 'Insert Number',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: screenSize.blockVertical * 16),
                  child: Text(
                    'Masukkan tanggal lahir',
                    style: GoogleFonts.openSans(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenSize.blockVertical * 30,
                      left: screenSize.blockHorizontal * 18,
                      right: screenSize.blockHorizontal * 18),
                  child: DateTimePicker(
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.event),
                    ),
                    calendarTitle: 'Pilih Tanggal Lahir',
                    type: DateTimePickerType.date,
                    dateMask: 'd MMM, yyyy',
                    initialValue: DateTime.now().toString(),
                    firstDate: DateTime(1800),
                    lastDate: DateTime(2100),
                    // dateLabelText: 'Date',
                    selectableDayPredicate: (date) {
                      // Disable weekend days to select from the calendar
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }

                      return true;
                    },
                    onChanged: (val) => print(val),
                    validator: (val) {
                      print(val);
                      return null;
                    },
                    onSaved: (val) => print(val),
                  ),
                ),
                Container(
                  alignment: AlignmentDirectional.center,
                  margin: EdgeInsetsDirectional.only(
                    top: screenSize.blockVertical * 55,
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(18, 99, 221, 1.0),
                        onPrimary: Colors.white,
                        elevation: 2.0,
                        padding: EdgeInsets.symmetric(
                            horizontal: screenSize.blockHorizontal * 28,
                            vertical: screenSize.blockVertical * 2),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Page1()));
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => Page1())); //tanpa history
                      },
                      child: Text('Login')),
                ),
              ],
            ),
            Expanded(
                child: Column(
              children: [
                Container(
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(top: screenSize.blockVertical * 20),
                  child: Text('APM',
                      style: GoogleFonts.openSans(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ),
                Container(
                  child: Text('Selamat Datang di Apikasi Antrian',
                      style: GoogleFonts.openSans(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white,
                      )),
                ),
              ],
            )),
            Container(
              alignment: Alignment.bottomCenter,
              margin: EdgeInsets.only(
                  bottom: screenSize.blockVertical * 5,
                  right: screenSize.blockVertical * 5,
                  left: screenSize.blockVertical * 5),
              child: Text(
                  "Don't have an RM number? you can still log in without logging in by selecting Skip.",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: GoogleFonts.openSans(
                    color: Colors.white,
                    fontSize: 15,
                  )),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: screenSize.blockVertical * 5,
                      left: screenSize.blockHorizontal * 82),
                  child: Text(
                    'Skip',
                    style: GoogleFonts.openSans(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: screenSize.blockVertical * 5,
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            )
            // Container(
            //   alignment: AlignmentDirectional.topEnd,
            //   margin: EdgeInsets.only(top: screenSize.blockVertical * 5),
            //   child: Text(
            //     "Skip ${Icons.arrow_forward}",
            //     style: GoogleFonts.openSans(
            //       color: Colors.white,
            //       fontSize: 18,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

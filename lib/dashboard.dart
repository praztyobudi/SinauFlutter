import 'package:flutter/material.dart';
import 'package:latihanflutter/content/content_1.dart';
import 'package:latihanflutter/content/home/slides_master.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:latihanflutter/content/news/news_master.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _pilihIndex = 0; //pengisian nilai awal
  List<Widget> _isiList = <Widget>[
    Home(), //0
    News(), //1
    Text('Message'), //2
    Text('Profile'), //3
    Content1(), //4
  ]; //list sesuai urutan _pilihIndex

  void _onItemTap(int index) {
    //nilai int dimasukkan index
    setState(() {
      _pilihIndex = index;
    });
  } //membuat fungsi ketika state berubah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Center(child: _isiList.elementAt(_pilihIndex)),
      // ),
      body: Center(
        child: _isiList.elementAt(_pilihIndex),
      ), //menampilkan isi dari _isiList
      bottomNavigationBar: ConvexAppBar.badge(
        {1: '10'},
        items: [
          TabItem(
            icon: Icons.home,
            title: 'Home',
          ),
          TabItem(
            icon: Icons.receipt_long,
            title: 'News',
          ),
          TabItem(
            icon: Icons.message,
            title: 'Message',
          ),
          TabItem(
            icon: Icons.person,
            title: 'Acount',
          ),
          TabItem(
            icon: Icons.copyright_sharp,
            title: 'Content',
          ),
        ],
        style: TabStyle.react,
        initialActiveIndex: _pilihIndex,
        color: Colors.white70, //color inactive
        onTap: _onItemTap,
        // backgroundColor: Color.fromRGBO(8, 47, 107, 1),
        backgroundColor: Colors.blue[600],
        curve: Curves.easeInOut,
        badgeColor: Colors.redAccent,
        badgeTextColor: Colors.white,
        badgeMargin: EdgeInsets.only(bottom: 20, right: 20),
      ),
    );
  }
}

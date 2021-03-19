import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:latihanflutter/content_1.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _pilihIndex = 0; //pengisian nilai awal
  List<Widget> _isiList = <Widget>[
    Text('Home'), //0
    Text('Message'), //1
    Text('Profile'), //2
    Content1(), //3
  ]; //list sesuai urutan _pilihIndex

  Void _onItemTap(int index) {
    //nilai int dimasukkan index
    setState(() {
      _pilihIndex = index;
    });
  } //membuat fungsi ketika state berubah

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: _isiList.elementAt(_pilihIndex)),
      ),
      body: Center(
        child: _isiList.elementAt(_pilihIndex),
      ), //menampilkan isi dari _isiList
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(Icons.message), title: Text('Message')),
          BottomNavigationBarItem(
              icon: Icon(Icons.person), title: Text('User')),
          BottomNavigationBarItem(
              icon: Icon(Icons.copyright_sharp), title: Text('Content1')),
        ],
        currentIndex: _pilihIndex,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true, //kondisi index saat ini
        onTap: _onItemTap, //kondisi ketika aksi tap
      ),
    );
  }
}

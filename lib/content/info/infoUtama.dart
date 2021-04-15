import 'package:flutter/material.dart';
import 'package:latihanflutter/src/screensize.dart';
import 'package:flutter/animation.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informasi Terbaru'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('info 1'),
            subtitle: Text('desktipsi'),
          ),
        ],
      ),
    );
  }
}

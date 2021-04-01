import 'package:flutter/material.dart';
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
          child: Text('data'),
        )
      ],
    );
  }
}

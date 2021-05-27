import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:latihanflutter/view/dashboard.dart';
import 'package:latihanflutter/view/login.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(
          name: '/',
          page: () => LoginPage(),
        ),
        GetPage(
            name: '/home',
            page: () => Page1(),
            transition: Transition.leftToRight,
            transitionDuration: Duration(seconds: 1)),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

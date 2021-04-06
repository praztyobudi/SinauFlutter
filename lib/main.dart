import 'package:flutter/material.dart';
import 'package:latihanflutter/dashboard.dart';
import 'package:latihanflutter/login.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MainPage());

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.inactive) {
      print("====>INACTIVE<====");
    }
    if (state == AppLifecycleState.paused) {
      print("====>PAUSE<====");
    }
    if (state == AppLifecycleState.resumed) {
      print("====>RESUME<====");
    }
    if (state == AppLifecycleState.detached) {
      print("====>DETACTED<====");
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug
      routes: {
        '/': (context) => LoginPage(),
        // '/dashboard': (context) => Page1()
      },
    );
  }
}

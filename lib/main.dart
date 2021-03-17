import 'package:flutter/material.dart';
import 'package:latihanflutter/login.dart';

// void main() {
//   runApp(MyApp());
// }
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //menghilangkan banner debug
      home: Scaffold(
        appBar: AppBar(
          title: Text("Selamat Datang"),
        ),
        body: LoginPage(),
      ),
    );
  }
}

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aplikasi State"),
      ),
      body: Center(
          child: Container(
              color: Colors.red[700],
              width: 150,
              height: 50,
              child: Center(child: Text("Ini Body")))),
    );
  }
}

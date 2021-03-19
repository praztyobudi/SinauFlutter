import 'package:flutter/material.dart';
import 'package:latihanflutter/page1.dart';
// import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.list),
                    hintText: 'Insert Number',
                    helperText: 'Information Number',
                    labelText: 'Number',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.calendar_today_sharp),
                    hintText: 'Insert Date of birth',
                    helperText: 'Information Date of birth',
                    labelText: 'Date of birth',
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 15),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    // Navigator.of(context)
                    //     .push(MaterialPageRoute(builder: (context) => Page1()));
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Page1())); //tanpa history
                  },
                  child: Text('Login'),
                  splashColor: Colors.white,
                  textColor: Colors.white,
                  color: Colors.lightBlue,
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}

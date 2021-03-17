import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Insert Number',
                  helperText: 'Information Number',
                  labelText: 'Number',
                ),
              ),
            ),
            Container(
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Insert Date of birth',
                  helperText: 'Information Date of birth',
                  labelText: 'Date of birth',
                ),
              ),
            ),
            ButtonBar(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      print('tombol');
                    },
                    icon: Icon(Icons.login),
                    label: Text('sentuh'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}

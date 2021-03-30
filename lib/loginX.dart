import 'package:flutter/material.dart';
import 'package:latihanflutter/dashboard.dart';
import 'package:date_time_picker/date_time_picker.dart';

// import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(color: Color.fromRGBO(14, 74, 165, 1.0)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                'Nomor ARM',
                style: TextStyle(fontSize: 15),
              ),
            ),
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
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(top: 15, bottom: 10),
              child: Text(
                'Masukkan tanggal lahir',
                style: TextStyle(fontSize: 15),
              ),
            ),
            Container(
              child: DateTimePicker(
                decoration: const InputDecoration(
                  helperText: 'Information Date of birth',
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
              padding: const EdgeInsets.only(top: 15),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Page1()));
                  // Navigator.pushReplacement(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => Page1())); //tanpa history
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
    ));
  }
}

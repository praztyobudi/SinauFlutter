import 'package:flutter/material.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  final europeanCountries = [
    'Albania',
    'Andorra',
    'Armenia',
    'Austria',
    'Azerbaijan',
    'Belarus',
    'Belgium',
    'Bosnia and Herzegovina',
    'Bulgaria',
    'Croatia',
    'Cyprus',
    'Czech Republic',
    'Denmark',
    'Estonia',
    'Finland',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: DraggableScrollableSheet(
          initialChildSize: 0.5,
          minChildSize: 0.5,
          maxChildSize: 1,
          builder: (BuildContext context, myController) {
            return Container(
              color: Colors.tealAccent[200],
              child: ListView.builder(
                controller: myController,
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(
                      europeanCountries[index],
                      style: TextStyle(color: Colors.black54),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

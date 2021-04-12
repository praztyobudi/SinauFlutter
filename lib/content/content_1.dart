import 'package:flutter/material.dart';
import 'package:latihanflutter/content/post.dart';

class Content1 extends StatefulWidget {
  @override
  _Content1State createState() => _Content1State();
}

class _Content1State extends State<Content1> {
  IsiPost isiPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Text((isiPost != null)
              ? isiPost.id +
                  "|" +
                  isiPost.nama +
                  "|" +
                  isiPost.pekerjaan +
                  "|" +
                  isiPost.created
              : "Kosong"),
          ElevatedButton(
            onPressed: () {
              IsiPost.koneksiKeAPI("Badu", "guru").then((value) {
                isiPost = value;
                setState(() {});
              });
            },
            child: Text('POST'),
          )
        ],
      )),
    );
  }
}

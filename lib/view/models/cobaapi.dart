// To parse this JSON data, do
//
//https://jsonplaceholder.typicode.com/posts

import 'dart:convert';

List<Welcome> welcomeFromJson(String str) =>
    List<Welcome>.from(json.decode(str).map((x) => Welcome.fromJson(x)));

String welcomeToJson(List<Welcome> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Welcome {
  Welcome({
    this.userId,
    this.id,
    this.number,
    this.title,
    this.body,
    this.calendar,
  });

  int userId;
  int id;
  int number;
  String title;
  String body;
  String calendar;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        userId: json["userId"],
        id: json["id"],
        number: json["number"],
        title: json["title"],
        body: json["body"],
        calendar: json["calendar"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "number": number,
        "title": title,
        "body": body,
        "calendar": calendar,
      };
}

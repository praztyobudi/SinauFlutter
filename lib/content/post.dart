import 'dart:convert';

import 'package:http/http.dart' as http;

class IsiPost {
  String id;
  String nama;
  String pekerjaan;
  String created;

  //pembuatan construktor
  //yang mana parameternya dimasukkan ke id berikut
  IsiPost({this.id, this.nama, this.pekerjaan, this.created});

  //Factory : membuat objek dari IsiPost
  //object dimaksud hasil dari mapping jsonObject
  factory IsiPost.createIsiPost(
      Map<String, dynamic>
          namaJsonObject) //object=nama jsonObject, Map<type data json>
  {
    return IsiPost(
      id: namaJsonObject['id'],
      nama: namaJsonObject['name'],
      pekerjaan: namaJsonObject['job'],
      created: namaJsonObject['createdAt'],
    );
  }
  //menghubungkan aplikasi ke API
  static Future<IsiPost> koneksiKeAPI(String name, String job) async {
    //  final String apiUrl = "https://reqres.in/api/users";
    var response = await http.post(Uri.parse("https://reqres.in/api/users"),
        body: {"nama": name, "pekerjaan": job});
    var hasilAPI = response;
    var ObjekJson = json.decode(hasilAPI.body);
    return IsiPost.createIsiPost(ObjekJson);
  }
}

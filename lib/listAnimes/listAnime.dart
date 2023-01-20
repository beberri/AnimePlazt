import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_app/listAnimes/animePopular.dart';
import 'package:flutter_app/listAnimes/animes.dart';
import 'package:http/http.dart' as http;

class listAnime extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _listAnime();
  }
}

class _listAnime extends State<listAnime> {

  late Future<List<anime>> animePopular;
  var url = Uri.parse("https://63c6fc264ebaa8028551c856.mockapi.io/anime/title");


  Future<List<anime>> _getAnime() async {
    final response = await http.get(url);
    List<anime> animes = [];

    if (response.statusCode == 200) {
      String data = utf8.decode(response.bodyBytes);
      List<dynamic> jsondata = json.decode(data);
      for (var item in jsondata) {
        animes.add(
            anime(item["id"],item["stars"],item["Nombre"], item["img"], item["Genero"], item["Descripcion"]));
      }
      return animes;
    } else {
      throw Exception("Fallo la conexión");
    }
  }


  @override
  Widget build(BuildContext context) {
    animePopular = _getAnime();
    return FutureBuilder(
      future: animePopular,
      builder: (context, snapshot) {
        if (snapshot.hasData) {


          return Column(
            mainAxisSize: MainAxisSize.min,
            children: _animePopular(snapshot.data as List<anime>),
          );



        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }


  List<Widget> _animePopular(List<anime> data) {
    List<Widget> list = [];
    for (var anime in data) {

      list.add(animes(anime.id, anime.stars, anime.img, anime.nombre, anime.genero, anime.des));
    }
    return list;
  }
}

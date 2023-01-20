import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/boton_regresarMenu.dart';
import 'package:flutter_app/card_img_list.dart';
import 'package:flutter_app/description_place.dart';
import 'package:flutter_app/gradient_back.dart';
import 'package:flutter_app/listAnimes/listAnime.dart';
import 'listAnimes/animeG.dart';
import 'package:http/http.dart' as http;
import 'navbar.dart';

class home extends StatefulWidget {
  String id;

  home(this.id) {
    id = this.id;
  }

  @override
  State<StatefulWidget> createState() {
    return _home(id);
  }
}

class _home extends State<home> {
  late Future<animeG> animePopular;
  String id;

  String u = ("https://63c6fc264ebaa8028551c856.mockapi.io/anime/menu?id=");
  _home(this.id) {
    id = this.id;
  }

  Future<animeG> _getAnime() async {
    var url = Uri.parse(u + id);

    final response = await http.get(url);

    if (response.statusCode == 200) {
      String data = utf8.decode(response.bodyBytes);
      var item = json.decode(data);

      return animeG(item[0]["id"], item[0]["nombre"], item[0]["img1"],
          item[0]["img2"],item[0]["img3"], item[0]["stars"], item[0]["des"]);
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
          return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children: [
                  gradient_back(" ", 350),
                  listCard(snapshot.data!.img1, snapshot.data!.img2,snapshot.data!.img3),
                  boton_regresarMenu(),
                  DescriptionAnime(snapshot.data!.nombre,
                      int.parse(snapshot.data!.star), snapshot.data!.des)
                ],
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}

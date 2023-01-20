import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app/ButtonExit.dart';
import 'package:flutter_app/gradient_back.dart';
import 'package:flutter_app/model_profile.dart';
import 'package:flutter_app/subtitle.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/userListimg.dart';
import 'user_info.dart';

class profile_anime extends StatefulWidget {
  String id;
  profile_anime(this.id) {
    id = this.id;
  }

  @override
  State<StatefulWidget> createState() {
    return _profile_anime(id);
  }
}

class _profile_anime extends State<profile_anime> {
  late Future<model_profile> user;
  String id;
  List<String> favorite =[];
  List<String> watching =[];
  List<String> finish =[];
  String u = ("https://63c9d1e7320a0c4c954fb121.mockapi.io/users?id=");
  _profile_anime(this.id) {
    id = this.id;
  }


  Future<model_profile> _getAnime() async {
    var url = Uri.parse(u + id);

    final response = await http.get(url);
    favorite.clear();
    watching.clear();
    finish.clear();
    if (response.statusCode == 200) {
      String data = utf8.decode(response.bodyBytes);
      var item = json.decode(data);

      for(var items in item[0]["favorite"]){

        favorite.add(items);

      }
      for(var items in item[0]["watching"]){
        watching.add(items);
      }
      for(var items in item[0]["finish"]){
        finish.add(items);
      }


      return model_profile(item[0]["name"], item[0]["email"], item[0]["photo"], favorite,watching ,finish);
    } else {
      throw Exception("Fallo la conexión");
    }
  }

  @override
  Widget build(BuildContext context) {
    user = _getAnime();

    return FutureBuilder(
      future: user,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: MediaQuery.of(context).size.height-56,
            child: Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      alignment: Alignment.center,

                        children: [

                      gradient_back(" ", 200),
                      user_info(snapshot.data!.nombre,snapshot.data!.email,snapshot.data!.photo),
                      ButtonExit(),
                    ]),

                    subtitle("Series Favoritas"),
                    userListimg(favorite),
                    subtitle("Series Viendo"),
                    userListimg(watching),
                    subtitle("Series Terminadas"),
                    userListimg(finish)
                    //listCard(snapshot.data!.img1, snapshot.data!.img2,snapshot.data!.img3),
                   // boton_regresarMenu(),
                   // DescriptionAnime(snapshot.data!.nombre,
                    //    int.parse(snapshot.data!.star), snapshot.data!.des)
                  ],
                ),
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

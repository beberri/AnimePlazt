import 'package:flutter/material.dart';
import 'package:flutter_app/SettingPage.dart';

import 'package:flutter_app/home_anime.dart';
import 'package:flutter_app/listAnimes/menuAnime.dart';
import 'package:flutter_app/profile_anime.dart';
import 'package:flutter_app/search_anime.dart';

class navbar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _navbar();
  }
}

class _navbar extends State<navbar> {
  int indexTap = 0;
  final List<Widget> widgetChildren = [HomePage(),profile_anime("1")];

  void onTapTapped(int index) {
    setState(() {

      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Colors.white),
          child: BottomNavigationBar(
              selectedItemColor: const Color(0xff8e24a1),
              unselectedItemColor: Colors.black87,
              showSelectedLabels: false,
              showUnselectedLabels: false,
              onTap: onTapTapped,
              currentIndex: indexTap,

              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.search), label: "Search"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person), label: "profile"),
              ]),
        ),
        body: SingleChildScrollView(child: widgetChildren[indexTap]));
  }
}

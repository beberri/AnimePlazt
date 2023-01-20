import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/SettingPage.dart';
import 'package:flutter_app/gradient_back.dart';
import 'package:flutter_app/listAnimes/listAnime.dart';
import 'package:google_fonts/google_fonts.dart';

class menuAnime extends StatelessWidget {
  const menuAnime({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return SingleChildScrollView (
      child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [

          listAnime(),
        ],
      ),
    );
  }
}

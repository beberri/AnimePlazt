import 'package:flutter/material.dart';
import 'package:flutter_app/listAnimes/menuAnime.dart';
import 'package:google_fonts/google_fonts.dart';

class boton_regresarMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.transparent,
        margin: const EdgeInsets.only(top: 55, left: 1, right: 10),
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => const menuAnime()),
                );
              },
              child: const Icon(
                Icons.arrow_back,
                size: 35,
                color: Colors.white,
              ),
            ),
            Text(
              "Popular",
            style: GoogleFonts.acme(
    fontSize: 25,
    fontWeight: FontWeight.w900,
    color: Colors.white,
    ),
    ),
          ],
        ));
  }
}

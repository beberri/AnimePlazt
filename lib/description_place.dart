import 'package:flutter/material.dart';
import 'package:flutter_app/button.dart';
import 'package:google_fonts/google_fonts.dart';
import 'listReview.dart';
 class DescriptionAnime extends StatelessWidget {
  String nameAnime;
   int star;
  String descriptionAnime;

  List<Widget> iStar = [];

  DescriptionAnime(this.nameAnime, this.star, this.descriptionAnime,
      {super.key});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 450, right: 1, left: 1),
      child: const Icon(Icons.star, color: Colors.amberAccent),
    );

    final starBorder = Container(
      margin: const EdgeInsets.only(top: 450, right: 1, left: 1),
      child: const Icon(Icons.star_outline_rounded, color: Colors.amberAccent),
    );

    for (var i = 0; i < this.star; i++) {
      iStar.add(star);
    }
    for (var j = 0; j < 5 - this.star; j++) {
      iStar.add(starBorder);
    }

    final titleStars = FittedBox(
      child: Row(

        children: [
          Container(

            margin: const EdgeInsets.only(top: 450.0, left: 20.0, right: 10.0),
            child: Text(
              nameAnime,
              style: GoogleFonts.lato(fontSize: 30, fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          ),
          Row(
            children: iStar,
          )
        ],
      ),
    );

    final description = Container(
        
      margin: const EdgeInsets.only(top: 15, right: 20, left: 20),
      child: Text(
        descriptionAnime,
        style: GoogleFonts.lato(),
        textAlign: TextAlign.justify,
      ),
    );

    final titleReview = Container(
      alignment: Alignment.bottomLeft,
      margin: const EdgeInsets.only(top: 40, right: 20, left: 20),
      child: Text(
        "Reseñas de Usuarios",
        textAlign: TextAlign.right,
        style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w900,color: Colors.grey),

      ),
    );

    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [titleStars, description,Button("VER"),titleReview,   listReview()],
    );
  }
}

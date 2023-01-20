import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';

class listReview extends StatelessWidget {
  const listReview({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(

      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Review("img/kirito.jpg", "Kirito", "1 reseña 5 fotos.",
            "Excelente anime, con un final apropiado."),
        Review("img/user3.jpg", "Destroyert23", "4 reseña 2 fotos.",
            "Es una lástima que no tenga otra temporada."),
        Review("img/kirito.jpg", "Kirito", "1 reseña 5 fotos.",
            "Excelente anime, con un final apropiado."),
        Review("img/kirito.jpg", "Kirito", "1 reseña 5 fotos.",
            "Excelente anime, con un final apropiado."),
        Review("img/kirito.jpg", "Kirito", "1 reseña 5 fotos.",
            "Excelente anime, con un final apropiado."),

      ],
    );
  }
}

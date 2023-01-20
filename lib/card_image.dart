import 'package:flutter/material.dart';
import 'package:flutter_app/boton_verde.dart';

class card_image extends StatelessWidget {
  String pathImg = "";

  card_image(this.pathImg, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(

      height: 450,
      width: 200,
      margin: const EdgeInsets.only(top: 150, left: 20,bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(pathImg)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 10, offset: Offset(0.1, 8))
        ],
      ),
    );

    return Stack(
      alignment: const Alignment(0.9,0.95),
      children: [card, botonVerde()],
    );
  }
}

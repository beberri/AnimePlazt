import 'package:flutter/material.dart';
import 'package:flutter_app/boton_regresarMenu.dart';
import 'package:google_fonts/google_fonts.dart';

class gradient_back extends StatelessWidget {
  String title = "";
  double size = 0;

  gradient_back(this.title,this.size, {super.key});

  @override
  Widget build(BuildContext context) {
    final ret = Container(
      margin: const EdgeInsets.only(top: 1, right: 10, left: 5),
      child: const Icon(Icons.arrow_back, color: Colors.white, size: 45),
    );

    return Container(
      height: size,
      width: 420,
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(left: 10),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15)),
          gradient: LinearGradient(
        colors: [Color(0xff951208), Color(0xff8e24a1)],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      )),
      child:  Text(

      title,
      style: GoogleFonts.acme(

        fontSize: 25,
        fontWeight: FontWeight.w900,
        color: Colors.white,
      ),
    ),

    );
  }
}

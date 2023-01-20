import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class subtitle extends StatelessWidget{

  String sub ="";


  subtitle(this.sub, {super.key}) {
    sub = this.sub;
  }

  @override
  Widget build(BuildContext context) {


    return Container(
      margin: EdgeInsets.only(left: 20,top: 20,bottom: 6),
      alignment: Alignment.centerLeft,
      child: Text(

        sub,
        style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w700),
        textAlign: TextAlign.start,

      ),
    );

  }
}
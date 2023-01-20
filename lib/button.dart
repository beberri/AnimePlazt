import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  String button = "";

  Button(this.button, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text("ver")));
      },
      child: Container(
          margin: const EdgeInsets.only(top: 25, left: 20, right: 20),
          height: 40,
          width: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                colors: [Color(0xff951208), Color(0xff8e24a1)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
          child: Center(
            child: Text(
              button,
              style: GoogleFonts.lato(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          )),
    );
  }
}

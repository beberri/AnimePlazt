import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class user_info extends StatelessWidget {
  String name = "";
  String email = "";
  String photo = "";

  user_info(this.name, this.email, this.photo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 2,top: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 80,
            width: 80,
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image:
                  DecorationImage(fit: BoxFit.cover, image: NetworkImage(photo)),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
              shape: BoxShape.rectangle,
              boxShadow: const [
                BoxShadow(
                    color: Colors.black38, blurRadius: 10, offset: Offset(0.1, 8))
              ],
            ),
          ),
          Text(
            
            name,
            style: GoogleFonts.lato(fontSize: 25, fontWeight: FontWeight.w600,color: Colors.white),
          ),
          Text(
            email,
            style: GoogleFonts.lato(fontSize: 15, fontWeight: FontWeight.w500,color: Colors.white70),
          )
        ],
      ),
    );
  }
}

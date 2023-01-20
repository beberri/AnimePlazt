import 'description_place.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Review extends StatelessWidget {
  String imagen = "";
  String user = "";
  String review = "";
  String comment = "";
  Review(this.imagen, this.user, this.review, this.comment, {super.key});

  @override
  Widget build(BuildContext context) {
    final star = Container(
      margin: const EdgeInsets.only(top: 1, right: 1, left: 3),
      child: const Icon(Icons.star, color: Colors.amberAccent, size: 10),
    );

    final UserDescription = Container(
      margin: const EdgeInsets.only(left: 20, top: 15, right: 20,bottom: 20),

      child: Text(
        comment,
        style: GoogleFonts.lato(),
        textAlign: TextAlign.justify,
      ),
    );

    final userInfo = Row(children: [
      Container(

        margin: const EdgeInsets.only(left: 20),
        child: Text(
          review,
          textAlign: TextAlign.left,
          style: GoogleFonts.acme(
              fontWeight: FontWeight.w200, fontSize: 10, color: Colors.grey),
        ),
      ),
      Row(
        children: [star, star, star,star],
      )
    ]);

    final userName = Container(
      margin: const EdgeInsets.only(left: 20, top: 20),

      child: Text(
        user,
        textAlign: TextAlign.left,
        style: GoogleFonts.acme(fontWeight: FontWeight.w200, fontSize: 14),
      ),
    );

    final userDetail = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName,
        userInfo,
        UserDescription,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20, left: 20,bottom: 20),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(fit: BoxFit.cover, image: AssetImage(imagen))),
    );

    return Container(
      margin: EdgeInsets.only(top: 15,left: 20,right: 20,bottom: 10),
      decoration: const BoxDecoration(
        color: Color(0xffF6F7F8),
        borderRadius: BorderRadius.all(Radius.circular(5)),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
              color: Colors.black38, blurRadius: 10, offset: Offset(0.0, 7))
        ],
      ),

      child: Row(

        children: [photo, Flexible(child: userDetail)],
      ),
    );
  }
}

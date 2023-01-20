import 'package:flutter/material.dart';
import 'package:flutter_app/home_anime.dart';
import 'package:flutter_app/listAnimes/menuAnime.dart';
import 'package:google_fonts/google_fonts.dart';

class animes extends StatelessWidget {
  int id;
  String nombre = "";
  String genero = "";
  String description = "";
  String img = "";
  int star;
  animes(this.id,this.star, this.img, this.nombre, this.genero, this.description,
      {super.key});
  List<Widget> iStar = [];



  @override
  Widget build(BuildContext context) {
    final star = Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 15, right: 1, left: 3),
      child: const Icon(Icons.star, color: Colors.amberAccent, size: 15),
    );

    final starBorder = Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 15, right: 1, left: 3),
      child: const Icon(Icons.star_border,
          color: Colors.amberAccent, size: 15),
    );

    for (var i = 0; i < this.star; i++) {
      iStar.add(star);
    }
    for (var j = 0; j < 5 - this.star; j++) {
      iStar.add(starBorder);
    }

    final nombreAnime = FittedBox(
      child: Row(

        children: [
          Container(

            margin: const EdgeInsets.only(left: 5, top: 20, right: 2),
            child: Text(
              nombre,
              style: GoogleFonts.acme(fontWeight: FontWeight.w200, fontSize: 15),
              textAlign: TextAlign.start,
            ),
          ),
          Row(
            children: iStar,
          )
        ],
      ),
    );



    final generoAnime = Row(children: [
      Container(
        margin: const EdgeInsets.only(left: 5),
        child: Text(
          genero,
          textAlign: TextAlign.left,
          style: GoogleFonts.acme(
              fontWeight: FontWeight.w200,
              fontSize: 10,
              color: Color(0xff959798)),
        ),
      ),
    ]);

    final desAnime = Container(
      margin: const EdgeInsets.only(left: 5, top: 10),
      child: Text(
        description,
        textAlign: TextAlign.justify,
        style: GoogleFonts.acme(fontWeight: FontWeight.w200, fontSize: 10),
      ),
    );

    final detalleAime = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        nombreAnime,
        generoAnime,
        desAnime,
      ],
    );

    final photo = Container(
      margin: const EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
      width: 75,
      height: 110,
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(img)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 10, offset: Offset(0.0, 7))
        ],
      ),
    );

    final boton = Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.only(top: 10, left: 10, right: 20),
      child:
          const Icon(Icons.play_arrow_rounded, color: Colors.black87, size: 35),
    );

    final card = Container(
      height: 150,
      width: 365,
      margin: EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 5),
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
        children: [photo, Flexible(child: detalleAime), boton],
      ),
    );

    return InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => home(id.toString())),
          );
          ;
        },
        child: card);

    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home("1")),
        );
        ;
      },
      child: Row(
        children: [photo, Flexible(child: detalleAime), boton],
      ),
    );

    InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => home("3")),
        );
      },
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 20),
        decoration: const BoxDecoration(
          color: Color(0xffF6F7F8),
          borderRadius: BorderRadius.all(Radius.circular(5)),
          shape: BoxShape.rectangle,
          boxShadow: [
            BoxShadow(
                color: Colors.black38, blurRadius: 10, offset: Offset(0.0, 7))
          ],
        ),
        child: ListView.builder(
          itemCount: 1,
          shrinkWrap: true,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children: [photo, Flexible(child: detalleAime), boton],
            );
          },
        ),
      ),
    );
  }
}

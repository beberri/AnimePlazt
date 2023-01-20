import 'package:flutter/material.dart';
import 'package:flutter_app/card_image.dart';

class listCard extends StatelessWidget {

  String img1="";
  String img2="";
  String img3="";
  listCard(this.img1,this.img2,this.img3){
    img1=this.img1;
    img2=this.img2;
    img3=this.img3;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Container(

      height: 400,

      child: ListView(
        padding: EdgeInsets.only(right: 15),
        scrollDirection: Axis.horizontal,
        children: [
          card_image(img1),
          card_image(img2),
          card_image(img3),
        ],
      ),
    );
  }
}

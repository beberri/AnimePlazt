import 'package:flutter/material.dart';


class userList extends StatelessWidget {
  String pathImg = "";

  userList(this.pathImg, {super.key});

  @override
  Widget build(BuildContext context) {
    final card = Container(
      height: 100,
      width: 150,
      margin: const EdgeInsets.only(top: 20, left: 17,bottom: 20,right: 17),
      decoration: BoxDecoration(
        image: DecorationImage(fit: BoxFit.cover, image: NetworkImage(pathImg)),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        shape: BoxShape.rectangle,
        boxShadow: const [
          BoxShadow(
              color: Colors.black38, blurRadius: 10, offset: Offset(0.5, 8))
        ],
      ),
    );

    return card;

  }
}

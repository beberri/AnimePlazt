import 'package:flutter/material.dart';
import 'package:flutter_app/userList.dart';

class userListimg extends StatelessWidget {
 List<String> animes =[];
 userListimg(this.animes){
    animes=this.animes;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xffF6F7F8),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
              color: Colors.black38, blurRadius: 10, offset: Offset(1, 1))
        ],
      ),
      height: 260,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        for(var i =0; i<animes.length; i++)
            userList(animes[i])
        ],
      ),
    );
  }
}

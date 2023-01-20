import 'package:flutter/material.dart';


class ButtonExit extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text("Saliendo...")));
      },
      child: Container(
        alignment: Alignment.topRight,
          margin: const EdgeInsets.only(top: 15, left: 350, right: 45),
          height: 130,
          width: 130,
          child: Icon(
            Icons.exit_to_app, color: Colors.white, size: 40,
          )

      ),
    );
  }
}

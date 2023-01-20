import 'package:flutter/material.dart';
import 'package:flutter_app/boton_verde.dart';

class botonVerde extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _botonVerde();
  }
}

class _botonVerde extends State<botonVerde> {
  bool _pressed = false;
  void onPressedFav() {
    setState(() {
      _pressed = !_pressed;
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(

        content: _pressed
            ? const Text("Añadido a Favorito")
            : const Text("Quitado de Favorito"))

    );

  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: const Color(0xff11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(_pressed ? Icons.favorite : Icons.favorite_border),
    );
  }
}

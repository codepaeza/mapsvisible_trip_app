import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

 void onPressedFav(){
   Scaffold.of(context).showSnackBar(
       SnackBar(
         content: Text("Visitar"),

       )
   );
 }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF0F57F1),
      mini: true,
      onPressed: onPressedFav ,
      tooltip: "Fav",
      child: Icon(
        Icons.favorite_border
      )
    );
  }

}
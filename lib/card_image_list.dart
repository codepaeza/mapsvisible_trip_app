import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
        CardImage("assets/img/embarcadero1.jpg"),
          CardImage("assets/img/estacion_tren.jpg"),
          CardImage("assets/img/ferrocarril_girardot.jpg"),
          CardImage("assets/img/puente_ferreo.jpg"),
          CardImage("assets/img/rio_magdalena.jpg"),
          CardImage("assets/img/parque_bolivar1.jpg")
        ],
      ),
    );
  }

}

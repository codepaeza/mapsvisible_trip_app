import 'package:flutter/material.dart';
import 'description_place.dart';
import 'header_appbar.dart';
import 'review_list.dart';

class HomeTrips extends StatelessWidget{
  String descriptionLugar= 'La Ciudad de las Acacias, quienes la visitan comprenden la razón de su denominación; y es que debido a su ubicación a 290 metros de altura sobre el nivel del mar y en el valle que se conforma entre las cordilleras oriental y central a orillas del Río Magdalena, sus habitantes viven en un ambiente con temperaturas entre los 20°C y 34°C, pero en promedio mantenida en los 27°C y con una radiación solar que promedia las 5 horas diarias; condiciones que desde la primera mitad del siglo XX llevaron a los habitantes a plantar árboles de esta especie, para obtener sombra en las viviendas y así “refrescarlas un poco”.';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace('Girardot',4, descriptionLugar),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}
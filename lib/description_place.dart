import 'package:flutter/material.dart';
import 'button_app.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  int star;
  String descriptionPlace;
  //Constructor DescriptionPlace
  DescriptionPlace(this.namePlace,this.star,this.descriptionPlace);

  String descriptionLugar= 'La Ciudad de las Acacias, quienes la visitan comprenden la razón de su denominación; y es que debido a su ubicación a 290 metros de altura sobre el nivel del mar y en el valle que se conforma entre las cordilleras oriental y central a orillas del Río Magdalena, sus habitantes viven en un ambiente con temperaturas entre los 20°C y 34°C, pero en promedio mantenida en los 27°C y con una radiación solar que promedia las 5 horas diarias';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final description=Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0,
      ),
      child: Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: 'Neucha',
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xff828282)
        ),
      ),
    );

    final stars_half=Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_half,
          color: Color(0xffF2C611)
      ),
    );

    final stars_border=Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
          Icons.star_border,
          color: Color(0xffF2C611)
      ),
    );

    final stars=Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xffF2C611)
      ),
    );

    final title_stars=Row (
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            left: 20.0,
            top: 320.0,
            right: 20.0,            
          ),
          child: Text(
              namePlace,
          style: TextStyle(
            fontFamily: 'Neucha',
            fontSize: 30.0,
            fontWeight: FontWeight.w900
          ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            stars,
            stars,
            stars,
            stars,
            stars_border,
          ],
        )
      ],
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
       title_stars,
       description,
        ButtonApp("Explorar")
      ],
    );
  }

}
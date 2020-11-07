import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review('assets/img/edwin.jpg', 'Edwin Páez', '5 review 3 photos', 'Un lugar con una historia mágica'),
        new Review('assets/img/icono_mapsvisible.jpg','Angela Ochoa', '6 review 5 photos', 'Hermosos paisajes y un clima para disfrutar'),
        new Review('assets/img/monumboga.jpg','Oscar Daniel Páez','4 review 3 photos', 'Me encanta la naturaleza y las piscinas')
      ],
    );
  }

}
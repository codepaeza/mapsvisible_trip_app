import 'package:flutter/material.dart';

class Review extends StatelessWidget{
  String pathImage= 'assets/img/edwin.jpg';
  String name='Edwin Páez';
  String details='1 review 5 photos';
  String comment='Un lugar con historia para muchos desconocida';

  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final userComment= Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontSize: 13.0,
            fontFamily: 'Neucha',
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final userInfo= Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Neucha',
          fontWeight: FontWeight.w900
        ),
      ),
    );

    final userName= Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),

      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontFamily: 'Neucha',
        ),
      ),
    );
    final user_details= Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userComment,
        userInfo,

      ],
    );

    final photo= Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,

      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
           image: DecorationImage(
        fit: BoxFit.cover,
        image: AssetImage(pathImage)
           )
      ),
    );

    return Row (
      children: <Widget>[
        photo,
        user_details

      ],
    );
  }

}
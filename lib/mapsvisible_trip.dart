import 'package:flutter/material.dart';
import 'home_trips.dart';
import 'search_trips.dart';
import 'profile_trips.dart';

class MapsvisibleTrip extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MapsVisibleTrip();
  }

}

class _MapsVisibleTrip extends State<MapsvisibleTrip>{
  int indexTap=0;

  final List<Widget> widgetsChildren=[
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];
  void onTapTapped(int index){
    setState(() {
      indexTap=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
          primaryColor: Colors.deepPurpleAccent
        ),
        child: BottomNavigationBar(
          onTap: onTapTapped,
          currentIndex: indexTap,
          items:[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text("")
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                title: Text("")
            ),

          ]
      )
      ),
    );
  }

}
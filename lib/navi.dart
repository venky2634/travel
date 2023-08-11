import 'package:flutter/material.dart';
import 'package:travel/page1.dart';
import 'package:travel/page2.dart';
import 'package:travel/page3.dart';
import 'package:travel/page4.dart';
import 'package:travel/welcome.dart';


class navigation extends StatefulWidget {
  const navigation({super.key});

  @override
  State<navigation> createState() => _navigationState();
}

class _navigationState extends State<navigation> {
 
   int _presentindex = 0;

  final List Screen = [

    Home(),
    Shop(),
    Profile(),
    Library()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: Screen[_presentindex],
     bottomNavigationBar: BottomNavigationBar(

    currentIndex: _presentindex,
    onTap: ( value){
    setState(() {
      _presentindex = value;
    });
    },

     type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      showUnselectedLabels: false,
      unselectedItemColor: Colors.grey,

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.apps,),label: "Home"),
          BottomNavigationBarItem(
          icon: Icon(Icons.bar_chart_sharp,),label: "Bar"),
          BottomNavigationBarItem(
          icon: Icon(Icons.search,),label: "Search"),
          BottomNavigationBarItem(
          icon: Icon(Icons.person,),label: "Person"),
      ]),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:ott_platform/Profile.dart';
import 'package:ott_platform/search.dart';
import 'package:ott_platform/trending.dart';
import 'Settings.dart';
import 'colors.dart';
import 'homepage.dart';

class Navi extends StatefulWidget {
  const Navi({super.key});

  @override
  State<Navi> createState() => _NaviState();
}

class _NaviState extends State<Navi> {
  int a = 0;
  final page = [
    Homepage(),
    Search(),
    Trend(),
    Profile(),
    Help()
  ];
  void tab(index){
    setState(() {
      a = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[a],
      bottomNavigationBar: BottomNavigationBar(backgroundColor: w,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled,color: bl,),label: "Home",),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: bl,),label: "Search"),
        BottomNavigationBarItem(icon: Icon(Icons.local_fire_department_outlined,color: bl,),label : "Trend"),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: bl,),label : "Trend"),
        BottomNavigationBarItem(icon: Icon(Icons.help,color: bl,),label : "Help"),
      ],
      currentIndex: a,
        onTap: tab,
      ),
    );
  }
}

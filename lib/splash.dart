import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_platform/colors.dart';
import 'login.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  
  @override
  void initState() {
    super.initState();
    Timer(const Duration(milliseconds: 2000), () {
      Navigator.push(
        context, MaterialPageRoute(
        builder: (_)=>const Login()
      )
      );
    }
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              bl,b,sky1
            ]
          )
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(
              height: 200,
            // height: MediaQuery.of(context).size.height*.13,
            width: MediaQuery.of(context).size.width*.75,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                    image: AssetImage(
                      "pict/film-filmstrip.gif",
                    ),fit: BoxFit.fill
                )
            ),
          ),
            Text("FLIM STRIP",style: GoogleFonts.wallpoet(fontSize: 45),)
          ]

        ),
      ),
    );
  }
}

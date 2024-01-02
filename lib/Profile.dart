import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_platform/Settings.dart';

import 'bottomnavi.dart';
import 'colors.dart';
import 'login.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: b1,
          leading: Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Container(
              height: 40,
                width: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "pict/Strips1.jpeg"
                    ),
                  )
                ),
                child:  Center(
                  child: Text("FLIM STRIP",style: GoogleFonts.wallpoet(fontSize: 10),
    ),
                ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: Icon(Icons.settings,color: w,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Center(
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> const Help()));
                  },
                  child: Text("Help&Settings",style : TextStyle(fontSize: 18,color: w),

                  ),
                ),
              ),
            )
          ],
        ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  bl,b,sky1
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Text("Login to FlimStrip",style: GoogleFonts.gabriela(fontSize:25,color: w
                  ,fontWeight: FontWeight.bold),),
            ),
            Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height*.13,
                    width: MediaQuery.of(context).size.width*.75,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: const DecorationImage(
                            image: AssetImage(
                              "pict/Strips1.jpeg",
                            ),fit: BoxFit.fill
                        )
                    ),
                  ),
                  Text("FLIM STRIP",style: GoogleFonts.wallpoet(fontSize: 45),)
                ]

            ),

            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.04,
                width: MediaQuery.of(context).size.width*.5,
                child: ElevatedButton(onPressed: (){

                    Navigator.push(context, MaterialPageRoute(builder:(_)=>const Login()));

                },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(r1)
                    ),
                    child: Text("Login",
                      style: GoogleFonts.eagleLake(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                      ),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

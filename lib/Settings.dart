import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:toggle_switch/toggle_switch.dart';

import 'Profile.dart';
import 'bottomnavi.dart';
import 'colors.dart';

class Help extends StatefulWidget {
  const Help({super.key});

  @override
  State<Help> createState() => _HelpState();
}
class _HelpState extends State<Help> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: b1,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Profile()));
            },
            child: Icon(Icons.arrow_back_ios,color: w,)),
        title: Text("Settings",style: GoogleFonts.xanhMono(
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                bl,b,sky1
              ]
          ),
        ),
        child: Column(
          children: [
            Card(
              elevation: 10,
              color: w.withOpacity(.2),
              child:
                ExpansionTile(
                  leading: Icon(Icons.download,color: w,),
                  title: Text("Downloads",style: TextStyle(
                      color: bl,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),),
                  subtitle: Text("download quality & Storage & more",style: TextStyle(
                    color: bl,
                    fontSize: 14,
                  ),),
                  children: [
                    Card(
                      color: w.withOpacity(.3),
                      child: ListTile(
                        title: Text("Downloads only on WiFi for this device",style: TextStyle(
                            color: bl,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: ToggleSwitch(
                          minHeight: 18,
                          minWidth: 18,
                          cornerRadius: 18.0,
                          activeBgColors: [[bl],[bl]],
                          activeFgColor: Colors.white,
                          inactiveBgColor: Colors.white,
                          inactiveFgColor: Colors.white,
                          initialLabelIndex: 1,
                          totalSwitches: 2,
                          radiusStyle: true,
                          onToggle: (index) {

                          },
                        ),
                      ),
                    ),
                    Card(
                      color: w.withOpacity(.3),
                      child:ListTile(
                        title: Text("Video Quality",style: TextStyle(
                            color: bl,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),),
                        trailing: GestureDetector(
                            onTap: (){
                              showModalBottomSheet<void>(
                                  context: context,
                                  builder: (BuildContext context) {
                                    return Container(
                                      height: MediaQuery.of(context).size.height*.4,
                                      decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                            colors: [
                                              bl,b,sky1
                                            ]
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Card(
                                            color: w.withOpacity(.2),
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.09,
                                              width: double.infinity,
                                              child: Center(
                                                child:  Text("1080p Full HD",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: w.withOpacity(.7)
                                                  ),),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            color:w.withOpacity(.2) ,
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.09,
                                              width: double.infinity,
                                              child: Center(
                                                child:  Text("720p HD",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: w.withOpacity(.8)
                                                  ),),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            color:w.withOpacity(.2) ,
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.09,
                                              width: double.infinity,
                                              child: Center(
                                                child:  Text("480p low",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: w.withOpacity(.8)
                                                  ),),
                                              ),
                                            ),
                                          ),
                                          Card(
                                            color:w.withOpacity(.2) ,
                                            child: Container(
                                              height: MediaQuery.of(context).size.height*.09,
                                              width: double.infinity,
                                              child: Center(
                                                child:  Text("Ask Me EveryTime",
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: w.withOpacity(.8)
                                                  ),),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  });
                            },
                            child: Icon(Icons.keyboard_arrow_down_sharp)),
                      ),
                      ),
                  ],

                )
            ),
            Card(
              elevation: 10,
              color: w.withOpacity(.2),
              child: ListTile(
                leading: Icon(Icons.help_outline,color: w,),
                title: Text("Help and Support",style: TextStyle(
                    color: bl,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                ),),
                trailing: Icon(Icons.keyboard_arrow_down_outlined,color: bl,),
                subtitle: Text("Help Center",style: TextStyle(
                    color: bl,
                    fontSize: 14,
                ),),
              ),
            ),
            Card(
              elevation: 10,
              color: w.withOpacity(.2),
              child: ListTile(
                  leading: Icon(Icons.language_outlined,color: w,),
                  title: Text("App Language",style: TextStyle(
                      color: bl,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text("English",style: TextStyle(
                    color: bl,
                    fontSize: 14,
                  ),),
                  trailing:GestureDetector(
                    onTap: (){
                      showModalBottomSheet<void>(
                          context: context,
                          builder: (BuildContext context) {
                        return Container(
                          height: MediaQuery.of(context).size.height*.45,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  bl,b,sky1
                                ]
                            ),
                          ),
                          child: Column(
                            children: [
                              Card(
                                color: w.withOpacity(.2),
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.08,
                                  width: double.infinity,
                                  child: Center(
                                    child:  Text("Tamil",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: w.withOpacity(.7)
                                      ),),
                                  ),
                                ),
                              ),
                              Card(
                                color:w.withOpacity(.2) ,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.08,
                                  width: double.infinity,
                                  child: Center(
                                    child:  Text("English",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: w.withOpacity(.8)
                                      ),),
                                  ),
                                ),
                              ),
                              Card(
                                color:w.withOpacity(.2) ,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.08,
                                  width: double.infinity,
                                  child: Center(
                                    child:  Text("Telugu",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: w.withOpacity(.8)
                                      ),),
                                  ),
                                ),
                              ),
                              Card(
                                color:w.withOpacity(.2) ,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.08,
                                  width: double.infinity,
                                  child: Center(
                                    child:  Text("Hindi",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: w.withOpacity(.8)
                                      ),),
                                  ),
                                ),
                              ),
                              Card(
                                color:w.withOpacity(.2) ,
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.08,
                                  width: double.infinity,
                                  child: Center(
                                    child:  Text("Malayalam",
                                      style: TextStyle(
                                          fontSize: 18,
                                          color: w.withOpacity(.8)
                                      ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      });
                    },

                      child: Icon(Icons.keyboard_arrow_down_outlined))
              ),
            )
          ],
        ),
      ),
    );
  }
}

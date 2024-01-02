import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ott_platform/model.dart';

import 'bottomnavi.dart';
import 'colors.dart';
class More extends StatefulWidget {
  const More({super.key});

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: b1,
        leading:GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Navi()));
            },
            child: Icon(Icons.arrow_back_ios,color: w,)),
        title: Text("Extended",style: GoogleFonts.trainOne(
          fontSize: 18,
          letterSpacing: 3
        ),),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              bl,b,sky1
            ]
          )
        ),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 1,
            itemBuilder: (BuildContext slide,index) {
              return Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height*.90,
                    width: double.infinity,
                    child: GridView.builder(
                        gridDelegate:SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                            mainAxisExtent: MediaQuery.of(context).size.height*.255,
                            childAspectRatio:3/5,
                            crossAxisSpacing: .5,
                            mainAxisSpacing: .5
                        ),
                        itemCount: ld.length,
                        itemBuilder: (BuildContext asd,index)
                        {
                          return Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Container(
                                  height: MediaQuery.of(context).size.height*.245,
                                  width: MediaQuery.of(context).size.width*.32,
                                  decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black),
                                      image: DecorationImage(image: AssetImage(ld[index].image),
                                          fit: BoxFit.fill)
                                  ),
                                ),
                              ),

                            ],
                          );
                        }
                    ),
                  ),
                ],
              );

            }
        ),
      ),
    );
  }
}

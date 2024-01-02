import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:readmore/readmore.dart';

import 'bottomnavi.dart';
import 'colors.dart';
import 'model.dart';

class Trend extends StatefulWidget {
  const Trend({super.key});

  @override
  State<Trend> createState() => _TrendState();
}

class _TrendState extends State<Trend> {

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          backgroundColor: b1,
          leading: GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_)=>const Navi()));
              },
              child: Icon(Icons.arrow_back_ios,color: w,)),
          title: Center(
            child: Text("Hot & Trend",style: GoogleFonts.xanhMono(
              fontWeight: FontWeight.bold,
            ),),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Icon(Icons.add,color: w,),
            )
          ],
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
              SizedBox(
                height: MediaQuery.of(context).size.height*.855,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: la.length,
                      itemBuilder: (context,index){
                        return
                          Container(
                            width: double.infinity,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height*.3,
                                      width: MediaQuery.of(context).size.width*1,
                                      child: Image(image: AssetImage(la[index].image),fit: BoxFit.fill,)),
                                  Column(
                                    children: [
                                      Container(
                                        height: MediaQuery.of(context as BuildContext).size.height*.05,
                                        width: double.infinity,
                                        child: Row(
                                          children: [
                                            RichText(text:  TextSpan(children: [
                                              TextSpan(text: ("2017 - "),style: TextStyle(
                                                  color: w1
                                              )),
                                              TextSpan(text: "8 Languages - ",style: TextStyle(
                                                  color: w1
                                              )),
                                              TextSpan(text: "Comedy - ",style: TextStyle(
                                                  color: w1
                                              )),
                                              TextSpan(text: "Animated - ",style: TextStyle(
                                                  color: w1
                                              )),
                                            ])),
                                            Container(
                                              height: MediaQuery.of(context as BuildContext).size.height*.025,
                                              width: MediaQuery.of(context as BuildContext).size.width*.14,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(20),
                                                  color: Colors.white.withOpacity(.3)
                                              ),child:Center(child: Text("U/A 8+")) ,
                                            ),
                                          ],
                                        ),
                                      ),
                                      ReadMoreText(
                                        "A kind-hearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.",
                                        trimLines: 1,
                                        colorClickableText: Colors.red,
                                        trimMode: TrimMode.Line,
                                        trimCollapsedText: 'Show more',
                                        trimExpandedText: 'Show less',
                                        moreStyle: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: w),
                                        lessStyle: TextStyle(fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                            color: w),
                                        style: TextStyle(fontSize: 15,
                                            color: sky3),

                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.30,
                                            child: ElevatedButton(
                                                style: ButtonStyle(
                                                    backgroundColor: MaterialStateProperty.all(w.withOpacity(.1))
                                                ),
                                                onPressed: (){},
                                                child: Text("Watch Now"))),
                                        SizedBox(
                                            height: MediaQuery.of(context).size.height*.05,
                                            width: MediaQuery.of(context).size.width*.15,
                                            child: ElevatedButton(
                                              style: ButtonStyle(
                                                backgroundColor: MaterialStateProperty.all(w.withOpacity(.1))
                                              ),
                                                onPressed: (){},
                                                child: Icon(Icons.add))),
                                      ],
                                    ),
                                  )
                                ],
                              )
                          );
                      }
                      ),
                ),
              )
            ],
          ),
        ),
      );
  }
}

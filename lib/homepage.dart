import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Description.dart';
import 'colors.dart';
import 'model.dart';
import 'moregrid.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});
  @override
  State<Homepage> createState() => _HomepageState();
}
class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Stack(alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    colors: [
                      g,sky1
                    ]
                )
            ),
            child:
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 1,
                  itemBuilder: (BuildContext slide,index)
                  {
                    return
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                              height: MediaQuery.of(context).size.height*.4,
                              child:
                              Stack(alignment: Alignment.bottomCenter,
                                children: [
                                  CarouselSlider.builder(
                                      options: CarouselOptions(
                                        height: double.infinity,
                                        aspectRatio: 3/2,
                                        viewportFraction: 1,
                                        initialPage: 0,
                                        enableInfiniteScroll: true,
                                        reverse: false,
                                        autoPlay: true,
                                        autoPlayInterval:  const Duration(seconds: 3),
                                        autoPlayAnimationDuration: const Duration(milliseconds: 800),
                                        autoPlayCurve: Curves.fastEaseInToSlowEaseOut,
                                        enlargeCenterPage: true,
                                        enlargeFactor: .1,
                                        scrollDirection: Axis.horizontal,
                                      ),
                                      itemCount: ls.length,
                                      itemBuilder: (BuildContext con,int index,int pageviewindex)
                                      {
                                        return
                                          Column(
                                            children: [
                                              GestureDetector(
                                                onTap: ()
                                                {
                                                  Navigator.pop(context, MaterialPageRoute(builder: (_)=> Des()));
                                                },

                                                child: Container(
                                                  height: MediaQuery.of(context).size.height*.38,
                                                  width: MediaQuery.of(context).size.width*1,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(ls[index].image),
                                                          fit: BoxFit.fill
                                                      )
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                      }
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height*.05,
                                        width: MediaQuery.of(context).size.width*.38,
                                        child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(bl.withOpacity(.6))
                                        ),
                                            child: Text("Subscribe Now")),
                                      ),
                                      SizedBox(
                                        height: MediaQuery.of(context).size.height*.05,
                                        width: MediaQuery.of(context).size.width*.15,
                                        child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                                            backgroundColor: MaterialStateProperty.all(bl.withOpacity(.9))
                                        ),
                                          child: Text("+",style: TextStyle(
                                            fontSize: 28,
                                          )
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Animation",style: GoogleFonts.gabriela(fontSize:20,color:w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: la.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(0.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.5,
                                            child:Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                  },
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration:  BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(la[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(la[index].text,style: TextStyle(
                                                  color: w,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold
                                                ),)

                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Action",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lb.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:GestureDetector(
                                              onTap: ()
                                              {
                                                Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(lb[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                  Text(lb[index].text,
                                                    style:TextStyle(
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 18,
                                                      color: w
                                                    ) ,)
                                                ],
                                              ),
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Classic",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lc.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Card(
                                            color: w.withOpacity(.2),
                                            elevation:10 ,
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height*.25,
                                              width: MediaQuery.of(context).size.width*.35,
                                              child:GestureDetector(
                                                onTap: (){
                                                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                },
                                                child: Column(
                                                    children: [
                                                      Container(
                                                        height: MediaQuery.of(context).size.height*.2,
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(lc[index].image),
                                                              fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      ),
                                                      Text(lc[index].text,
                                                          style:TextStyle(
                                                              fontWeight: FontWeight.bold,
                                                              fontSize: 18,
                                                              color: w
                                                          )),
                                                    ]
                                                ),
                                              ),
                                            ),
                                          )
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Fantasy",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: la.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                  },
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration:  BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(la[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(la[index].text,
                                                    style:TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: w
                                                    ))

                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Horror",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lb.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                  },
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(lb[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(lb[index].text,
                                                    style:TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: w
                                                    ))
                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("DC_Comics",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lc.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Card(
                                            color: w.withOpacity(.2),
                                            elevation:10 ,
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height*.25,
                                              width: MediaQuery.of(context).size.width*.35,
                                              child:Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: ()
                                                      {
                                                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                      },
                                                      child: Container(
                                                        height: MediaQuery.of(context).size.height*.2,
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(lc[index].image),
                                                              fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(lc[index].text,
                                                        style:TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 18,
                                                            color: w
                                                        )),
                                                  ]
                                              ),
                                            ),
                                          )
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Time_Loop",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: la.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                  },
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration:  BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(la[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(la[index].text,
                                                    style:TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: w
                                                    ))

                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Adventures",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lb.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:Column(
                                              children: [
                                                GestureDetector(
                                                  onTap: ()
                                                  {
                                                    Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                  },
                                                  child: Container(
                                                    height: MediaQuery.of(context).size.height*.2,
                                                    decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          image: AssetImage(lb[index].image),
                                                          fit: BoxFit.fill
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Text(lb[index].text,
                                                    style:TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: w
                                                    ))
                                              ],
                                            ),

                                          ),
                                        ),
                                      );
                                  }
                              ),
                            ),
                          ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Psycho_Thriller",style: GoogleFonts.gabriela(fontSize:20,color: w),),
                              GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (_)=>const More()));
                                  },
                                  child: Icon(Icons.arrow_forward_ios,color: w,)),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2.0),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.25,
                              child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: lc.length,
                                  itemBuilder: (BuildContext slide,index)
                                  {
                                    return
                                      Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Card(
                                            color: w.withOpacity(.2),
                                            elevation:10 ,
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height*.25,
                                              width: MediaQuery.of(context).size.width*.35,
                                              child:Column(
                                                  children: [
                                                    GestureDetector(
                                                      onTap: ()
                                                      {
                                                        Navigator.push(context, MaterialPageRoute(builder: (_)=> Des()));
                                                      },
                                                      child: Container(
                                                        height: MediaQuery.of(context).size.height*.2,
                                                        decoration: BoxDecoration(
                                                          image: DecorationImage(
                                                              image: AssetImage(lc[index].image),
                                                              fit: BoxFit.fill
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(lc[index].text,
                                                        style:TextStyle(
                                                            fontWeight: FontWeight.bold,
                                                            fontSize: 18,
                                                            color: w
                                                        )),
                                                  ]
                                              ),
                                            ),
                                          )
                                      );
                                  }
                              ),
                            ),
                          ),

                        ],
                      );
                  }
              ),
            ),
          ),
          Positioned(
          bottom: 20,
            child: SizedBox(
              height: MediaQuery.of(context).size.height*.06,
              width: MediaQuery.of(context).size.width*.3,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(
                        builder: (_)=>More()
                    )
                    );
                    },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: bl,

                    shape: StadiumBorder()
                  ),
                  child: Text("More Items")),
            ),
          ),
        ]
      ),
    );
  }
}

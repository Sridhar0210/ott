  import 'package:flutter/material.dart';
  import 'package:google_fonts/google_fonts.dart';
  import 'package:readmore/readmore.dart';
  import 'bottomnavi.dart';
  import 'colors.dart';
  import 'model.dart';
  import 'moregrid.dart';
  import 'movie play.dart';

  class Des extends StatefulWidget {
    const Des({super.key});

    @override
    State<Des> createState() => _DesState();
  }

  class _DesState extends State<Des> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: b1,
          actions: [GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.cancel_outlined,color: w,),
              )
          ),],
          title: Center(
            child: Text("Movie Name",style: GoogleFonts.xanhMono(
              fontWeight: FontWeight.bold,
            ),),
          ),
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
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 1,
                itemBuilder: (BuildContext slide,index)
                {
                  return
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Column(
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height*.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("Horror/HRR_conjuring.jpeg"),
                                  fit: BoxFit.fill
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height*.05,
                                width: MediaQuery.of(context).size.width*.30,
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all(w.withOpacity(.1))
                                    ),
                                    onPressed: (){
                                      Navigator.pushReplacement(context, MaterialPageRoute(builder:(_)=>Movie()));
                                    },
                                    child: Text("Watch Now"))),
                          ),
                          Container(
                            height: MediaQuery.of(context as BuildContext).size.height*.05,
                            width: double.infinity,
                            child: Row(
                              children: [
                                RichText(text:  TextSpan(children: [
                                  TextSpan(text: ("2017 - "),style: TextStyle(
                                      color: w1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  )),
                                  TextSpan(text: "8 Languages - ",style: TextStyle(
                                      color: w1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  )),
                                  TextSpan(text: "Comedy - ",style: TextStyle(
                                      color: w1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  )),
                                  TextSpan(text: "Horror - ",style: TextStyle(
                                      color: w1,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold
                                  )),
                                ])),
                                Container(
                                  alignment: Alignment.center,
                                  height: MediaQuery.of(context as BuildContext).size.height*.025,
                                  width: MediaQuery.of(context as BuildContext).size.width*.14,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                      color: Colors.white.withOpacity(.3)
                                  ),child:Text("U/A 8+",style: TextStyle(
                                  fontSize: 13
                                ),) ,
                                ),
                              ],
                            ),
                          ),
                          RichText(text:  TextSpan(children: [
                            TextSpan(text: ("The Perrons and their five daughters have recently moved into a secluded farmhouse, where a supernatural presence has made itself known. Though the manifestations are relatively benign at first, events soon escalate in horrifying fashion, especially after the Warrens discover the house's macabre history."),style: TextStyle(
                                color: w1,
                                fontSize: 16
                            )),

                          ])),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: RichText(text:  TextSpan(children: [
                              TextSpan(text: ("Horror-"),style: TextStyle(
                                  color: w1,
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                              TextSpan(text: "Science fiction - ",style: TextStyle(
                                  color: w1,
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                              TextSpan(text: "Comedy - ",style: TextStyle(
                                  color: w1,
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                              TextSpan(text: "Fantasy - ",style: TextStyle(
                                  color: w1,
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                              TextSpan(text: "Dark",style: TextStyle(
                                  color: w1,
                                  fontSize: 16,
                                fontWeight: FontWeight.bold
                              )),
                            ])),
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0,left: 20),
                                    child: Icon(Icons.add,color: w,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("WatchList",style:TextStyle(
                                        color:w,fontSize: 17,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 20.0,left: 20),
                                    child: Icon(Icons.share,color: w,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Share",style:TextStyle(
                                        color:w,fontSize: 17,fontWeight: FontWeight.bold),),
                                  )
                                ],
                              ), 
                            ],
                          ),
                          Container(alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height*.03,
                            width: MediaQuery.of(context).size.width*.96,
                            child: Text("Season 1",style: GoogleFonts.labrada(fontSize: 20,color: w),),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height,
                            child: ListView.builder(
                              physics: NeverScrollableScrollPhysics(),
                                scrollDirection: Axis.vertical,
                                itemCount: ls.length,
                                itemBuilder: (context,index){
                                  return
                                    Center(
                                      child: Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: Card(
                                          color: w.withOpacity(.2),
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.1,

                                            child: Center(
                                              child: ListTile(
                                                leading: Container(
                                                  height: 200,
                                                  width: 100,
                                                  child: Image(image: AssetImage(ls[index].image),fit: BoxFit.fill,),
                                                ),
                                                title: Text(ls[index].text,style: TextStyle(
                                                    color: bl,
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.bold
                                                ),),
                                                trailing: Icon(Icons.arrow_forward_ios,color: bl,),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                }),
                          ),
                          RichText(text:  TextSpan(children: [
                            TextSpan(text:
                            (""),style: TextStyle(
                                color: w1,
                                fontSize: 16
                            )),

                          ])),
                          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("More Like This",style: GoogleFonts.gabriela(fontSize:20,color: w),),
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
                                          color: w.withOpacity(.1),
                                          elevation:10 ,
                                          child: SizedBox(
                                            height: MediaQuery.of(context).size.height*.25,
                                            width: MediaQuery.of(context).size.width*.35,
                                            child:Column(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context).size.height*.2,
                                                  decoration:  BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(la[index].image),
                                                        fit: BoxFit.fill
                                                    ),
                                                  ),
                                                ),
                                                Text(la[index].text,style: TextStyle(
                                                  color: w,
                                                  fontSize: 15
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
                              Text("Related",style: GoogleFonts.gabriela(fontSize:20,color: w),),
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
                                            color: w.withOpacity(0.1),
                                            elevation:10 ,
                                            child: SizedBox(
                                              height: MediaQuery.of(context).size.height*.25,
                                              width: MediaQuery.of(context).size.width*.35,
                                              child:Column(
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
                                                    Text(lc[index].text,style: TextStyle(
                                                      color: w,
                                                      fontSize: 15
                                                    ),),
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
                      ),
                    );
                }
            ),
          ),
        ),
      );
    }
  }

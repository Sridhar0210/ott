import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:video_player/video_player.dart';
import 'bottomnavi.dart';
import 'colors.dart';
import 'model.dart';

class Movie extends StatefulWidget {
  const Movie({super.key});
  @override
  State<Movie> createState() => _MovieState();
}
class _MovieState extends State<Movie> {
  final FlickManager flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.asset("asset/vdo 1.mp4"));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: b1,
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (_)=>const Navi()));
            },
            child: Icon(Icons.arrow_back_ios,color: w,)),
        title: Center(
          child: Text("Movieplay",style: GoogleFonts.xanhMono(
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
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
                colors: [
                  bl,b,sky1
                ]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*.27,
                width: MediaQuery.of(context).size.width*1,
                color: b,
                child: FlickVideoPlayer(flickManager: flickManager,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*.06,
                  width: MediaQuery.of(context).size.width*.35,
                  child: ElevatedButton(onPressed: (){},style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black26)
                  ),
                      child: Text("Subscribe Now")),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height*.03,
                  width: MediaQuery.of(context).size.width*.96,
                  child: Text("Season 1",style: GoogleFonts.labrada(fontSize: 20,color: w),),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*.50,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: la.length,
                      itemBuilder: (context,index){
                        return
                          Card(color: w.withOpacity(.2),
                            child: SizedBox(
                              height: MediaQuery.of(context).size.height*.075,
                              child: Center(
                                child: ListTile(
                                  leading: Container(
                                    height: 70,
                                    width: 100,
                                    child: Image(image: AssetImage(la[index].image),fit: BoxFit.fill,),
                                  ),
                                  title: Text(ls[index].text,style: TextStyle(
                                      color: w,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  trailing: Icon(Icons.arrow_forward_ios,color: w,),
                                ),
                              ),
                            ),
                          );
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottomnavi.dart';
import 'colors.dart';
import 'model.dart';
class Search extends StatefulWidget {
  const Search({super.key});
  @override
  State<Search> createState() => _SearchState();
}
class _SearchState extends State<Search> {
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
          title: Card(color: w.withOpacity(.6),
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.mic),
                  hintText: "Search"
              ),
            ),
          ),
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
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(Icons.trending_up,color: w,),
                  ),
                  Text("POPULAR SEARCHES",style: GoogleFonts.labrada(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: w
                  )),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height*.8,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: la.length,
                    itemBuilder: (context,index){
                  return
                    Card(color: w.withOpacity(.7),
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
                              color: bl,
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            trailing: Icon(Icons.arrow_forward_ios,color: bl,),
                  ),
                        ),
                      ),
                    );
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}

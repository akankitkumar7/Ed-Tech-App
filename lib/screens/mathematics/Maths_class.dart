import 'package:ankit/screens/mathematics/maths_chapterX.dart';
import 'package:ankit/screens/mathematics/maths_chapterXI.dart';
import 'package:ankit/screens/mathematics/maths_chapter_IX.dart';
import 'package:ankit/screens/mathematics/maths_chapter_XII.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MathsClass extends StatelessWidget{
  const MathsClass({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          elevation: 0,
          backgroundColor: Colors.blue.shade900,
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              children: [
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft:Radius.circular(30),
                          bottomRight: Radius.circular(30)
                      ),
                      color: Colors.blue.shade900
                  ),
                  child: Column(
                    children: [
                      Text("  CHOOSE THE CLASS\nAND ENJOY LEARNING",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w900, letterSpacing: .5),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MathsChapterIX()));

                      },
                      child: Container(
                        width:MediaQuery.of(context).size.width*.457,
                        height: 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.pink.shade400,width: 3),
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue,
                          image: const DecorationImage(
                              image: AssetImage("assets/images/blur1.jpg"),
                              fit: BoxFit.fill
                          ),
                        ),
                        child: Center(child: Text(
                          "CLASS IX",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.purple.shade900
                          ),
                        )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MathsChapterX()));

                      },
                      child: Container(
                        width:MediaQuery.of(context).size.width*.457,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink.shade400,width: 3),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/blur2.jpg"),
                                fit: BoxFit.fill
                            )
                        ),
                        child: Center(child: Text(
                          "CLASS X",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.purple.shade900
                          ),
                        )
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MathsChapterXI()));

                      },
                      child: Container(
                        width:MediaQuery.of(context).size.width*.457,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink.shade400,width: 3),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            image: const DecorationImage(
                                image: AssetImage("assets/images/blur3.jpg"),
                                fit: BoxFit.fill
                            )
                        ),
                        child: Center(child: Text(
                          "CLASS XI",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.purple.shade900
                          ),
                        )
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MathsChapterXII()));

                      },
                      child: Container(
                        width:MediaQuery.of(context).size.width*.457,
                        height: 100,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.pink.shade400,width: 3),
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.blue,
                            image: const DecorationImage(
                              image: AssetImage("assets/images/blur4.jpg"),
                              fit: BoxFit.fill,
                            )
                        ),
                        child: Center(child: Text(
                          "CLASS XII",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w900,
                              color: Colors.purple.shade900
                          ),
                        )
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20,),
                Text("YOUR MENTORS",style: GoogleFonts.laila(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.blue.shade900,decoration: TextDecoration.underline,decorationStyle: TextDecorationStyle.wavy),),
                const SizedBox(height: 10),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.pink,
                          radius: 80,
                          child: CircleAvatar(
                            radius: 77,
                            backgroundImage:AssetImage("assets/images/a.jpeg"),
                          ),
                        ),
                        Text("Ankit Kumar"),
                        Text("Student at NIT Hamirpur"),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                            backgroundColor: Colors.pink,
                            radius: 80,
                            child: CircleAvatar(
                              radius: 77,
                              backgroundImage: AssetImage("assets/images/b.jpeg"),
                            )
                        ),
                        Text("Anshuman Handel"),
                        Text("Student at NIT Hamirpur"),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Text("ALL THE BEST & KEEP LEARNING !",style: GoogleFonts.montserrat(color: Colors.red,fontWeight: FontWeight.w900,fontSize: 15),)
              ]
          ),
        )
    );
  }
}
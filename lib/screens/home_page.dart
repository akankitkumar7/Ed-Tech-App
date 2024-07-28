import 'package:ankit/account_details.dart';
import 'package:ankit/notification.dart';
import 'package:ankit/provider/user_provider.dart';
import 'package:ankit/screens/coming_soon.dart';
import 'package:ankit/screens/drawer.dart';
import 'package:ankit/screens/physicss/physics.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'mathematics/Maths_class.dart';
import 'chemistryy/chemistry.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String name = "";
  String profilePic = "";

  void getProfilePic()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      profilePic = (snap.data() as Map<String, dynamic>)["photoUrl"];
    });

  }
  void getName()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      name = (snap.data() as Map<String, dynamic>)["name"];
    });

  }

  @override
  void initState() {
    super.initState();
    addData();
    getProfilePic();
    getName();
  }

  addData()async{
    UserProvider _userProvider =  Provider.of(context,listen: false);
    await _userProvider.refreshUser();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      drawer:const NavBar(),
      appBar: AppBar(
        title: Text(
            "Hello, $name",
          style: GoogleFonts.amaranth(
              color: Colors.white,
            fontSize: 20
          ),
        ),
        elevation: 0,
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
        actions: [
           InkWell(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDetailsPage()));
             },
             child: CircleAvatar(
               radius: 17,
               backgroundImage: NetworkImage(profilePic),
             ),
           ),
          const SizedBox(width: 10,),
          Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
            }, icon: const Icon(
              Icons.circle_notifications,
              size: 40,color: Colors.white,)),
          ),
        ],
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.blue.shade900,
              child: Column(
                children: [
                   Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Text(" CHOOSE SUBJECTS\nYOU WANNA LEARN",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(color: Colors.white, letterSpacing: .5,fontSize: 30,fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0,right: 30,top: 10),
                    child: TextField(
                      cursorHeight: 27,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.shade700,
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(11),
                          borderSide: BorderSide(
                            color: Colors.blue.shade900,
                          )
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(11),
                            borderSide: BorderSide(
                              color: Colors.blue.shade900,
                            ),
                        ),
                        suffixIcon: const Icon(Icons.search,size: 35,color: Colors.white,),
                        hintText: "Start typing to search...",
                        hintStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15,bottom: 15),
              child: Column(
                children: [
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const PhysicsClass()));
                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/maths.jpg")),
                      title:Text("PHYSICS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("9th, 10th, 11th, 12th Syllabus",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                 const SizedBox(height: 10),
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ChemistryClass()));

                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/chemistry.jpg")),
                      title: Text("CHEMISTRY",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("9th, 10th, 11th, 12th Syllabus",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const MathsClass()));
                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/maths.jpg")),
                      title: Text("MATHEMATICS",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("9th, 10th, 11th, 12th Syllabus",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ComingSoon()));

                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/jee.jpg")),
                      title: Text("JEE-MAINS & ADVANCED",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("Notes, PYQs in PDF format",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ComingSoon()));

                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/neet.jpg")),
                      title: Text("NEET",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("Notes, PYQs in PDF format",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Card(
                    elevation: 10,
                    color: Colors.blue.shade100,
                    child: ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const ComingSoon()));

                      },
                      contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                      leading: const Image(image: AssetImage("assets/images/coding.jpg")),
                      title: Text("CODING",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.blue.shade900),),
                      subtitle: const Text("C/C++, Flutter, Python, HTML, CSS",style: TextStyle(color: Colors.black,fontSize: 17,),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
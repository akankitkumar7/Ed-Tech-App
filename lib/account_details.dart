import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountDetailsPage extends StatefulWidget{
  const AccountDetailsPage({Key? key}) : super(key: key);

  @override
  State<AccountDetailsPage> createState() => _AccountDetailsPageState();
}

class _AccountDetailsPageState extends State<AccountDetailsPage> {
  String name = "";
  String email = "";
  String state = "";
  String city = "";
  String mobileNumber = "";
  String profilePic = "";

  @override
  void initState() {
    super.initState();
    getName();
    getEmail();
    getState();
    getCity();
    getMobileNumber();
    getProfilePic();
  }

  void getName()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      name = (snap.data() as Map<String, dynamic>)["name"];
    });

  }
  void getProfilePic()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      profilePic = (snap.data() as Map<String, dynamic>)["photoUrl"];
    });

  }

  void getEmail()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      email = (snap.data() as Map<String, dynamic>)["email"];
    });
  }
  void getState()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      state = (snap.data() as Map<String, dynamic>)["state"];
    });

  }
  void getCity()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      city = (snap.data() as Map<String, dynamic>)["city"];
    });

  }
  void getMobileNumber()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      mobileNumber = (snap.data() as Map<String, dynamic>)["mobileNumber"];
    });

  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
        title: Text(
            "My Profile",
            style:GoogleFonts.abhayaLibre(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
            ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight: Radius.circular(30)),
                  color: Colors.blue.shade900
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 140,top: 40),
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(profilePic),
                )
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 40),
            child: Text(
                "Your Details",
              style: GoogleFonts.aBeeZee(fontSize: 20,fontWeight: FontWeight.w900),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                 Icon(Icons.person_2_outlined,size: 30,color: Colors.blue.shade900,),
                const SizedBox(width: 40,),
                Text(name ,style: GoogleFonts.abyssinicaSil(fontSize: 17),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.email_outlined,size: 30,color: Colors.blue.shade900,),
                const SizedBox(width: 40,),
                Text(email ,style: GoogleFonts.abyssinicaSil(fontSize: 17),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.phone_android,size: 30,color: Colors.blue.shade900,),
                const SizedBox(width: 40,),
                Text(mobileNumber,style: GoogleFonts.abyssinicaSil(fontSize: 17),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.location_city,size: 30,color: Colors.blue.shade900,),
                const SizedBox(width: 40,),
                Text(city,style: GoogleFonts.abyssinicaSil(fontSize: 17),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.white,),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Row(
              children: [
                Icon(Icons.location_on_outlined,size: 30,color: Colors.blue.shade900,),
                const SizedBox(width: 40,),
                Text(state,style: GoogleFonts.abyssinicaSil(fontSize: 17),)
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left:20.0,right: 20,top: 10),
            child: Divider(thickness: 2,color: Colors.white,),
          )
        ],
      ),
    );
  }
}
import 'package:ankit/account_details.dart';
import 'package:ankit/notification.dart';
import 'package:ankit/resources/auth_methods.dart';
import 'package:ankit/screens/about_me.dart';
import 'package:ankit/screens/login.dart';
import 'package:ankit/screens/student_help.dart';
import 'package:ankit/screens/terms_conditions.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

class NavBar extends StatefulWidget{
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  String name = "";
  String email = "";
  String profilePic = "";

  @override
  void initState() {
    super.initState();
    getName();
    getEmail();
    getProfilePic();
  }

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

  void getEmail()async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection("users").doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState(() {
      email = (snap.data() as Map<String, dynamic>)["email"];
    });

  }

  @override
  Widget build(BuildContext context){
    // model.User user = Provider.of<UserProvider>(context).getUser;
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
            UserAccountsDrawerHeader(
              accountName: Text(name),
              accountEmail: Text(email),
            currentAccountPicture:
                 InkWell(
                   onTap: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>const AccountDetailsPage()));
                   },
                   child: CircleAvatar(
                     radius: 100,
                    backgroundImage:NetworkImage(profilePic),
                ),
                 ),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const NotificationPage()));
            },
            title:const Text("Notifications") ,
            leading:Icon(Icons.notifications,color: Colors.blue.shade900,),
          ),
           ListTile(
            title:const Text("My Downloads") ,
            leading:Icon(Icons.cloud_download,color: Colors.blue.shade900,),
          ),
          ListTile(
            onTap: (){
             Share.share("Share our App");

            },
            title:const Text("Share the App") ,
            leading:Icon(Icons.share,color: Colors.blue.shade900,),
          ),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const AboutMe()));
             },
            title:const Text("About Us") ,
            leading:Icon(Icons.info,color: Colors.blue.shade900),
          ),
           ListTile(
             onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (context)=>const HelplinePage()));
             },
            title:const Text("Student Help") ,
            leading:Icon(Icons.add_call,color: Colors.blue.shade900),
          ),
          ListTile(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const TermsAndConditions()));
            },
            title:const Text("Terms & Conditions") ,
            leading:Icon(Icons.privacy_tip,color: Colors.blue.shade900),
          ),
           ListTile(
            onTap: () async{
              await AuthMethods().signOut();
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const LoginPage()));
            },
            title:const Text("Logout",style: TextStyle(color: Colors.red),),

          ),

        ],
      ),

    );
  }
}
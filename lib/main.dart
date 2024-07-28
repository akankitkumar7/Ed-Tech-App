import 'package:ankit/screens/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'screens/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       theme: ThemeData(
         useMaterial3: true,
         iconTheme: const IconThemeData(
           color: Colors.white,
         ),
       ),
       home:StreamBuilder(
         stream: FirebaseAuth.instance.authStateChanges(),
         builder: (context,snapshot){
           if(snapshot.connectionState == ConnectionState.active){
             if(snapshot.hasData){
               return const HomePage();
             }
             else if(snapshot.hasError){
               return Center(
                 child: Text("${snapshot.error}"),
               );
             }
           }
           if(snapshot.connectionState == ConnectionState.waiting){
             return const Center(child: CircularProgressIndicator(color: Colors.white,),);
           }
           return const LoginPage();
         },
       ),
     );
  }
}

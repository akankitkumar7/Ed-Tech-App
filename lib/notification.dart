import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationPage extends StatelessWidget{
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
        title: Text(
            "Notifications",
          style: GoogleFonts.lato(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text("No Notifications",style: GoogleFonts.aBeeZee(fontWeight: FontWeight.w900),),
      ),
    );
  }

}
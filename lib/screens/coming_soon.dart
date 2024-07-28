import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget{
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Image.asset("assets/images/coming.png"),
        )
      ),
    );
  }
}
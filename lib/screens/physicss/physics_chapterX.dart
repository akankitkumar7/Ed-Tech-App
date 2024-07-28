import 'package:flutter/material.dart';

class PhysicsChapterX extends StatelessWidget{
  const PhysicsChapterX({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title: const Text("Class X Physics Syllabus",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: const Text("Light-Reflection and Refraction"),
                leading: const Text("1."),
                trailing: IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("The Human eye and The Colourful world"),
                leading: const Text("2."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Electricity"),
                leading: const Text("3."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Magnetic effects of Electric Current"),
                leading: const Text("4."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Sources of Energy"),
                leading: const Text("5."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
            ],
          ),
        )
    );
  }
}
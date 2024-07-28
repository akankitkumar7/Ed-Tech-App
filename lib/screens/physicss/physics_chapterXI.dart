import 'package:flutter/material.dart';

class PhysicsChapterXI extends StatelessWidget{
  const PhysicsChapterXI({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title: const Text("Class XI Physics Syllabus",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: const Text("Units and Measurements"),
                leading: const Text("1."),
                trailing: IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Motion in a Straight Line"),
                leading: const Text("2."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Motion in a Plane"),
                leading: const Text("3."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Laws of Motion"),
                leading: const Text("4."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Work, Energy and Power"),
                leading: const Text("5."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("System of Particles and Rotational Motion"),
                leading: const Text("6."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Gravitation"),
                leading: const Text("7."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Mechanical Properties of Solids"),
                leading: const Text("8."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Mechanical Properties of Fluids"),
                leading: const Text("9."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Thermodynamics"),
                leading: const Text("10."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Kinetic Theory"),
                leading: const Text("11."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Oscillations"),
                leading: const Text("12."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Waves"),
                leading: const Text("13."),
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
import 'package:flutter/material.dart';

class PhysicsChapterXII extends StatelessWidget{
  const PhysicsChapterXII({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title: const Text("Class XII Physics Syllabus",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: const Text("Electric Charges and Fields"),
                leading: const Text("1."),
                trailing: IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Electrostatic Potential and Capacitance"),
                leading: const Text("2."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Current Electricity"),
                leading: const Text("3."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Moving Charges and Magnetism"),
                leading: const Text("4."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Magnetism and Matter"),
                leading: const Text("5."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Electromagnetic Induction"),
                leading: const Text("6."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Alternating Current"),
                leading: const Text("7."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Electromagnetic Waves"),
                leading: const Text("8."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Ray Optics and Optical Instruments"),
                leading: const Text("9."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Wave Optics"),
                leading: const Text("10."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Dual Nature of Radiation and Matter"),
                leading: const Text("11."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Atoms"),
                leading: const Text("12."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Semiconductor Electronics"),
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
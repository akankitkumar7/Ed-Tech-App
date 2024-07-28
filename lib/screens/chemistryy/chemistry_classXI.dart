import 'package:flutter/material.dart';

class ChemistryChapterXI extends StatelessWidget{
  const ChemistryChapterXI({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title: const Text("Class XI CBSE Syllabus",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: const Text("Some Basic Concepts of Chemistry"),
                leading: const Text("1."),
                trailing: IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Structure of Atom"),
                leading: const Text("2."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Classification of Elements and Periodicity in Properties"),
                leading: const Text("3."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Chemical Bonding and Molecular Structure"),
                leading: const Text("4."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Thermodynamics"),
                leading: const Text("5."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Equilibrium"),
                leading: const Text("6."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Redox Reactions"),
                leading: const Text("7."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Organic Chemistry – Some Basic Principles & Techniques"),
                leading: const Text("8."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Hydrocarbons"),
                leading: const Text("9."),
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
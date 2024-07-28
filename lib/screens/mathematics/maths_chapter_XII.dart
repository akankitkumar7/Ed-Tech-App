import 'package:ankit/screens/mathematics/trigonometry.dart';
import 'package:flutter/material.dart';

class MathsChapterXII extends StatelessWidget{
  const MathsChapterXII({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        appBar: AppBar(
          iconTheme: const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title: const Text("Class XII CBSE Syllabus",style: TextStyle(color: Colors.white),),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              ListTile(
                title: const Text("Relations and Functions"),
                leading: const Text("1."),
                trailing: IconButton(
                  onPressed: (){

                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Inverse Trigonometric Functions"),
                leading: const Text("2."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Matrices"),
                leading: const Text("3."),
                trailing: IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Determinants"),
                leading: const Text("4."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Continuity and Differentiability"),
                leading: const Text("5."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Application of Derivatives"),
                leading: const Text("6."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Integrals"),
                leading: const Text("7."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Applications of Intergral"),
                leading: const Text("8."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Differential Equations"),
                leading: const Text("9."),
                trailing: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrigonometryPage()));
                  },
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Vector Algebra"),
                leading: const Text("10."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Three Dimensional Geometry"),
                leading: const Text("11."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Linear Programming"),
                leading: const Text("12."),
                trailing: IconButton(
                  onPressed: (){},
                  icon:const Icon(Icons.not_started_outlined),
                ),
              ),
              ListTile(
                title: const Text("Probability"),
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
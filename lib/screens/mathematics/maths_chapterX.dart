import 'package:ankit/screens/mathematics/trigonometry.dart';
import 'package:flutter/material.dart';

class MathsChapterX extends StatelessWidget{
  const MathsChapterX({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        iconTheme: const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
        title: const Text("Class Xth CBSE Syllabus",style: TextStyle(color: Colors.white),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ListTile(
              title: const Text("The Real Numbers"),
              leading: const Text("1."),
              trailing: IconButton(
                onPressed: (){

                },
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Polynomials"),
              leading: const Text("2."),
              trailing: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Pair of Linear Equations"),
              leading: const Text("3."),
              trailing: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Quadratic Equations"),
              leading: const Text("4."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Arithmetic Progressions"),
              leading: const Text("5."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
             ListTile(
              title: const Text("Triangles"),
              leading: const Text("6."),
               trailing: IconButton(
                 onPressed: (){},
                 icon:const Icon(Icons.not_started_outlined),
               ),
            ),
            ListTile(
              title: const Text("Coordinate Geometry"),
              leading: const Text("7."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Introduction to Trigonometry"),
              leading: const Text("8."),
              trailing: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const TrigonometryPage()));
                },
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Some Applications of Trigonometry"),
              leading: const Text("9."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Circles"),
              leading: const Text("10."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Construction"),
              leading: const Text("11."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Areas related to Circles"),
              leading: const Text("12."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Statistics"),
              leading: const Text("13."),
              trailing: IconButton(
                onPressed: (){},
                icon:const Icon(Icons.not_started_outlined),
              ),
            ),
            ListTile(
              title: const Text("Probability"),
              leading: const Text("14."),
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
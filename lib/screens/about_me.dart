import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutMe extends StatelessWidget{
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(),
        backgroundColor: Colors.blue.shade900,
        title:  Text("About Us",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/blur.jpg",),
              fit: BoxFit.fitHeight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Text("👋 Greetings! I'm Ankit Kumar, a dedicated second-year student pursuing Electronics and Communication Engineering (ECE) at the prestigious NIT Hamirpur in the serene landscapes of Himachal Pradesh. My roots trace back to the historically significant city of Ayodhya, Uttar Pradesh, a place steeped in culture and tradition.", textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                const SizedBox(height: 15),
                Text("🧮 Mathematics, 🌌 Physics, and 🧪 Chemistry have always captivated my imagination. I have an insatiable passion for these subjects and find immense joy in sharing my knowledge. Teaching, to me, is an art of illuminating minds and making complex concepts comprehensible. As a result, I've become adept at conveying the beauty and depth of these subjects to learners of all levels.", textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                const SizedBox(height: 15),
                Text("💻 In the digital realm, I wear the hat of a proficient programmer. My forte lies in crafting visually appealing and highly functional applications using Flutter. I bring to the table a versatile skill set, encompassing everything from web development with HTML and CSS to versatile scripting with Python and proficiency in Data Structures and Algorithms using C++.",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                const SizedBox(height: 15),
                Text("🌟 With an unbridled enthusiasm for both teaching and technology, I aspire to bridge the gap between these two worlds. My mission is to transform learning into an engaging adventure, where every concept is a stepping stone towards a brighter future. Whether it's demystifying the intricacies of science or creating innovative digital solutions, I'm here to lead the way.",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                const SizedBox(height: 15),
                Text("Join me on this educational voyage, where we unravel the mysteries of science, explore the endless possibilities of technology, and cultivate a passion for lifelong learning. Together, we can turn ideas into reality, one line of code or one mathematical equation at a time. Let's embark on this exciting journey of discovery and knowledge. 🚀",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
              ],

        ),
          ),
        ),
      )
    );
  }
}
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class HelplinePage extends StatelessWidget{
  const HelplinePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context){
    final Uri whatsapp = Uri.parse("https://wa.me/8765136250");
    const youtubeUrl = "https://youtube.com/@ak_ankitkumar7?feature=shared";
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        iconTheme: const IconThemeData(),
        title: Text(
            "Student Helpline",
          style: GoogleFonts.abhayaLibre(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top:10.0,left: 10,right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 5,
              shadowColor: Colors.blue.shade900,
              color: Colors.blue.shade100,
              child: ListTile(
                title: Text(
                  "E-mail us",
                  style: GoogleFonts.amarante(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
                trailing: Icon(Icons.email,color: Colors.blue.shade900,),
                subtitle: const Text("Send your queries/problems on ak4752970@gmail.com"),
              ),
            ),
            const SizedBox(height: 10),
            Card(
              elevation: 5,
              shadowColor: Colors.blue.shade900,
              color: Colors.blue.shade100,
              child: ListTile(
                title: Text(
                  "Chat with us on Whatsapp",
                  style: GoogleFonts.amarante(
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                  ),
                ),
                trailing: IconButton(
                  onPressed: ()async{
                    launchUrl(whatsapp);
                  },
                  icon: const Icon(Icons.chat),
                  color: Colors.blue.shade900,
                  iconSize: 30,
                ),
                subtitle: const Text("Our Team is happy to help you"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0,left: 15),
              child: Text(
                  "Follow Us",
                style: GoogleFonts.abyssinicaSil(
                    color: Colors.blue.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: ()async{
                    canLaunchUrl(youtubeUrl as Uri);
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/sm1.png",fit: BoxFit.cover,),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/sm (2).png"),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/sm (3).png"),
                  ),
                ),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.blue.shade200,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Image.asset("assets/images/sm (4).png"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
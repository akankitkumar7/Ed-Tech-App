import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditions extends StatelessWidget{
  const TermsAndConditions({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          iconTheme:const IconThemeData(),
          backgroundColor: Colors.blue.shade900,
          title:  Text("Terms and Conditions",style: GoogleFonts.aBeeZee(color: Colors.white,fontWeight: FontWeight.bold),),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("These Terms and Conditions govern your use of the educational mobile application provided by AK Classes. By using the App, you agree to comply with and be bound by these Terms. If you do not agree with these Terms, please do not use the App.", textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                  const SizedBox(height: 15),
                  Text("1.  Acceptance of Terms",style: GoogleFonts.rakkas(fontSize: 20),),
                  Text("By using the App, you agree to abide by these Terms, our Privacy Policy, and any other policies or guidelines provided by the Company within the App. These Terms constitute a legally binding agreement between you and the Company.", textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                  const SizedBox(height: 15),
                  Text("2.  Use of the App",style: GoogleFonts.rakkas(fontSize: 20),),
                  Text("[2.1] You must be of legal age or have parental or guardian consent to use the App. The App is intended for educational purposes and may not be used for any unlawful or unauthorized activities.",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                  const SizedBox(height: 15),
                  Text("[2.2] You may be required to create an account to access certain features of the App. You are responsible for maintaining the confidentiality of your account information and are liable for all activities that occur under your account.",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                  const SizedBox(height: 15),
                  Text("[2.3] By using the App, you may have the opportunity to submit or upload content, such as comments, reviews, or assignments. You agree not to submit any content that is offensive, infringes upon third-party rights, or violates any applicable laws or regulations.",textAlign: TextAlign.justify,style: GoogleFonts.openSans()),
                  const SizedBox(height: 15),
                  Text("3.  Intellectual Property",style: GoogleFonts.rakkas(fontSize: 20),),
                  const SizedBox(height: 15),
                  Text("[3.1] The App and all its content, including but not limited to text, graphics, images, videos, and software, are owned by the Company or its licensors and are protected by intellectual property laws.",textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                  const SizedBox(height: 15),
                  Text("[3.2] We grant you a limited, non-exclusive, non-transferable license to use the App for personal and educational purposes. You may not reproduce, distribute, or modify the App without our prior written consent.",textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                  const SizedBox(height: 15),
                  Text("4.  Privacy",style: GoogleFonts.rakkas(fontSize: 20),),
                  const SizedBox(height: 15,),
                  Text("Your use of the App is subject to our Privacy Policy, which describes how we collect, use, and disclose your personal information. By using the App, you consent to the practices described in the Privacy Policy.",textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                  const SizedBox(height: 15),
                  Text("5.  Termination",style: GoogleFonts.rakkas(fontSize: 20),),
                  const SizedBox(height: 15,),
                  Text("The Company reserves the right to terminate or suspend your access to the App at its discretion, without notice, for any reason, including, but not limited to, a breach of these Terms.",textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),
                  const SizedBox(height: 15,),
                  Text("6.  Disclaimer of Warranties",style: GoogleFonts.rakkas(fontSize: 20),),
                  const SizedBox(height: 15,),
                  Text("The App is provided ""as is"  " and as" " available" " without warranties of any kind, either express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose, or non-infringement.",textAlign: TextAlign.justify,style: GoogleFonts.openSans(),),

                ],

              ),
            ),
          ),
        )
    );
  }
}
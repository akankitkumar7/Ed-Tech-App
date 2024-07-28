import 'package:ankit/resources/auth_methods.dart';
import 'package:ankit/screens/home_page.dart';
import 'package:ankit/screens/sign_up_screen.dart';
import 'package:ankit/utils/utils.dart';
import 'package:ankit/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final  TextEditingController _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void loginUser()async{
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().loginUser(
        email: _emailController.text,
        password: _passwordController.text,
    );
    if(res == "success"){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>const HomePage()));

    }
    else{
      showSnackBar(res, context);
      setState(() {
        _isLoading = false;
      });

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.blue.shade900,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
          children: [
            const SizedBox(height: 170),
             Text(
                "Welcome to AK Classes",
              style: GoogleFonts.aBeeZee(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),
            ),
            const SizedBox(height: 130,),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                  child: TextFieldInput(
                    hintText: "Enter your E-mail",
                    textInputType: TextInputType.emailAddress,
                    textEditingController: _emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                  child: TextFieldInput(
                    hintText: "Enter password",
                    textInputType: TextInputType.text,
                    textEditingController: _passwordController,
                    isPass: true,
                  ),
                ),
                const SizedBox(height: 20,),
                InkWell(
                  onTap: loginUser,
                  child: Container(
                    padding:const EdgeInsets.symmetric(),
                    height: 45,
                    width: 370,
                    alignment: Alignment.center,
                    decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                      color: Colors.blue
                    ),
                    child: _isLoading ? const Center(child: CircularProgressIndicator(color: Colors.white,)):Text(
                        "Log In",
                      style: GoogleFonts.aBeeZee(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: const Text(
                        "Don't have an account?",
                      style: TextStyle(
                        color: Colors.white
                      ),

                    ),
                  ),
                  GestureDetector(
                    onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const SignupScreen())),
                    child: Container(
                      child: const Text(
                          "  Sign up",
                        style: TextStyle(
                            color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
      ),
        ),
      ) ,
    );
  }
}

import 'dart:typed_data';
import 'package:ankit/resources/auth_methods.dart';
import 'package:ankit/screens/home_page.dart';
import 'package:ankit/screens/login.dart';
import 'package:ankit/utils/utils.dart';
import 'package:ankit/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
class SignupScreen extends StatefulWidget{
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignupScreen> {
  final TextEditingController _emailController = TextEditingController();
  final  TextEditingController _passwordController = TextEditingController();
  final  TextEditingController _nameController = TextEditingController();
  final  TextEditingController _mobileController = TextEditingController();
  final  TextEditingController _cityController = TextEditingController();
  final  TextEditingController _stateController = TextEditingController();
  Uint8List? _image;
  bool _isLoading = false;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _mobileController.dispose();
    _nameController.dispose();
    _cityController.dispose();
    _stateController.dispose();

  }

  void selectImage()async{
    Uint8List im = await pickImage(ImageSource.gallery);
    setState(() {
      _image = im;
    });
  }

  void signUpUser()async{
    setState(() {
      _isLoading = true;
    });
    String res = await AuthMethods().signUpUser(
      name: _nameController.text,
      email: _emailController.text,
      password: _passwordController.text,
      mobileNumber: _mobileController.text,
      city: _cityController.text,
      state: _stateController.text,
      file:_image!,
    );

    if(res != "success"){
      setState(() {
        _isLoading = false;
      });
      showSnackBar(res, context);
    }
    else {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=>const HomePage()),
      );
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
              const SizedBox(height: 100),
                Stack(
                 children: [
                   _image != null ? CircleAvatar(
                     radius: 64,
                     backgroundImage: MemoryImage(_image!),
                   )
                       :
                     const CircleAvatar(
                     radius: 64,
                     backgroundColor: Colors.blue,
                       backgroundImage: AssetImage("assets/images/akk.png"),
                   ),
                   Positioned(
                     bottom: -0.1,
                     left: 78,
                       child: CircleAvatar(
                         backgroundColor: Colors.blue,
                         child: IconButton(
                             onPressed: selectImage,
                             icon: const Icon(Icons.add_a_photo,color: Colors.white,),
                         ),
                       ),
                   )
                 ],
               ),
              const SizedBox(height: 40,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0,left: 20,right: 20),
                    child: TextFieldInput(
                      hintText: "Enter Your Name",
                      textInputType: TextInputType.text,
                      textEditingController: _nameController,
                    ),
                  ),
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
                      hintText: "Enter your password",
                      textInputType: TextInputType.text,
                      textEditingController: _passwordController,
                      isPass: true,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFieldInput(
                      hintText: "Enter your Mobile number",
                      textInputType: TextInputType.number,
                      textEditingController: _mobileController,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFieldInput(
                      hintText: "Enter your City",
                      textInputType: TextInputType.text,
                      textEditingController: _cityController,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20,right: 20),
                    child: TextFieldInput(
                      hintText: "Enter your State",
                      textInputType: TextInputType.text,
                      textEditingController: _stateController,
                    ),
                  ),
                  const SizedBox(height: 20,),
                  InkWell(
                    onTap: signUpUser,
                    child: _isLoading ? const Center(child:  CircularProgressIndicator(color: Colors.white,)) :Container(
                      padding:const EdgeInsets.symmetric(),
                      height: 45,
                      width: 370,
                      alignment: Alignment.center,
                      decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                          color: Colors.blue
                      ),
                      child: Text(
                        "Sign up",
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
                        "Already have an account?",
                        style: TextStyle(
                            color: Colors.white
                        ),

                      ),
                    ),
                    GestureDetector(
                      onTap: ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LoginPage())),
                      child: Container(
                        child: const Text(
                          "  Log In",
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

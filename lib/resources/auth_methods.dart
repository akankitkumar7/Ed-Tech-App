import 'dart:typed_data';
import 'package:ankit/models/user.dart' as model;
import 'package:ankit/resources/storage_methods.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethods{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;



  Future<model.User> getUserDetails() async{
    User currentUser = _auth.currentUser!;
    DocumentSnapshot snap = await _firestore.collection("users").doc(currentUser.uid).get();

    return  model.User.fromSnap(snap);
  }
  //sign up user
Future<String>signUpUser({
    required String name,
    required String email,
    required String password,
    required String mobileNumber,
    required String city,
    required String state,
    required Uint8List file,

})async{
  String res = "Some error occurred";
  try{
    if(
        email.isNotEmpty ||
        name.isNotEmpty ||
        password.isNotEmpty ||
        mobileNumber.isNotEmpty ||
        city.isNotEmpty ||
        state.isNotEmpty ||
        file!=null
         ){

      // registering user
     UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
     String photoUrl = await StorageMethods().uploadImageToStorage("profilePics", file, false);

     //adding user to database
     model.User user = model.User(
       name: name,
       uid: cred.user!.uid,
       email: email,
       mobileNumber: mobileNumber,
       city: city,
       state: state,
       photoUrl: photoUrl,
     );
     await _firestore.collection("users").doc(cred.user!.uid).set(user.toJson());
     res = "success";

    }

  } on FirebaseAuthException catch(err){
    if(err.code == "invalid-email"){
      res = "The email is badly formatted";

  } else if(err.code == "weak-password"){
      res = "Your password should be at least 6 characters";

    }
  }


  catch(err){
    res = err.toString();

  }
  return res;
}


//logging in user

Future<String> loginUser({
    required String email,
    required String password,

})async{
  String res = "Some error occurred";
  try {
    if (email.isNotEmpty || password.isNotEmpty) {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      res = "success";
    } else {
      res = "Please enter all the fields";
    }
  } catch(err){
    res = err.toString();

  }
  return res;
}

Future<void> signOut() async{
  await _auth.signOut();
}
}
import 'package:cloud_firestore/cloud_firestore.dart';

class User{
  final String name;
  final String uid;
  final String email;
  final String mobileNumber;
  final String city;
  final String state;
  final String photoUrl;

  const User({
    required this.name,
    required this.uid,
    required this.email,
    required this.mobileNumber,
    required this.city,
    required this.state,
    required this.photoUrl,
});



  Map<String, dynamic> toJson()=>{
    "name": name,
    "uid": uid,
    "email": email,
    "mobileNumber": mobileNumber,
    "city": city,
    "state": state,
    "photoUrl": photoUrl,
  };

  static User fromSnap(DocumentSnapshot snap){
    var snapshot = snap.data() as Map<String, dynamic>;
    return User(
        name: snapshot["name"],
        uid: snapshot["uid"],
        email: snapshot["email"],
        mobileNumber: snapshot["mobileNumber"],
        city: snapshot["city"],
        state: snapshot["state"],
        photoUrl: snapshot["photoUrl"],
    );
  }

}
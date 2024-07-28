import 'package:ankit/models/user.dart';
import 'package:ankit/resources/auth_methods.dart';
import 'package:flutter/material.dart';

class UserProvider with ChangeNotifier{
  User? _user;
  final AuthMethods _authMethods = AuthMethods();
  User get getUser => _user!;


  Future<void> refreshUser() async{
    User user = await _authMethods.getUserDetails();

    _user = user;

    notifyListeners();
  }
}
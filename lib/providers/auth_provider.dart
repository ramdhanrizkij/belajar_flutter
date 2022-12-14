import 'package:flutter/material.dart';
import 'package:happy_store/models/user_model.dart';

import '../services/auth_service.dart';

class AuthProvider with ChangeNotifier{
  UserModel _user = new UserModel();
  UserModel get user => _user;
  String errorMessage = "";
  
  set user(UserModel user){
    _user = user;
    notifyListeners();
  }

  // bool login({String email="", String password=""}){
  //   if(email=="testing@store.com" && password=="testing"){
  //     user = UserModel(id: 1, name: "Testing User", email: "testing@gmail.com",username: "Testing");
  //     notifyListeners();
  //     return true;
  //   }else {
  //     return false;
  //   }
  // }

   Future<bool> register({
    String name = "",
    String username = "",
    String email = "",
    String password = "",
  }) async {
    try {
      UserModel user = await AuthService().register(
        name: name,
        username: username,
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }

  Future<bool> login({
    String email = "",
    String password = "",
  }) async {
    try {
      UserModel user = await AuthService().login(
        email: email,
        password: password,
      );

      _user = user;
      notifyListeners();
      return true;
    } catch (e) {
      print(e);
      return false;
    }
  }
}
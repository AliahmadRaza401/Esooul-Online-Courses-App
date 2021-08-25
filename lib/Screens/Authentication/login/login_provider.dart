import 'dart:convert';
import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;

  Future signIn({@required email, @required password}) async {
    try {
      print(email);
      print("Sign In ---------------------------");
      final _response = await http.post(
        Uri.parse(signInApi),
        headers: headers,
        body: jsonEncode({'email': email, 'password': password}),
      );

      result = jsonDecode(_response.body);
      return result;
    } catch (e) {
      return e.toString();
    }
  }

  checkUserAlreadyLogin(BuildContext context) async {
    bool loginUser = await getloginUser();
    print('loginUser: $loginUser');
    if (loginUser == true) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => BottomNavBar()));
      print("User Alrady Login");
    } else {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => LogIn()));
    }
  }

  loginTrue() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('loginUser', true);
    print("User  Login  True");
  }

  loginFalse() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('loginUser', false);
    print("User  Login  False");
  }

  getloginUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return bool
    bool? boolValue = prefs.getBool('loginUser');
    return boolValue;
  }
}

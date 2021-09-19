import 'dart:convert';
import 'package:esooul/Screens/Authentication/login/login.dart';
import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Screens/BottomNavBar/bottomNavBar.dart';
import 'package:esooul/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;
  var userFname;
  var userLname;
  var userEmail;

  Future signIn({@required email, @required password}) async {
    try {
      print(email);
      print("Sign In ---------------------------");
      final _response = await http.post(
        Uri.parse(signInApi),
      headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
       
        },
        body: jsonEncode({'email': email, 'password': password}),
      );

      result = jsonDecode(_response.body);
      return result;
    } catch (e) {
      return e.toString();
    }
  }

  // Save User Data

  userFName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userFName', value);
  }

  userLName(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userLName', value);
  }

  userEmailSave(String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userEmail', value);
  }

  Future getUserFName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = prefs.getString('userFName');
    return user;
  }

  Future getUserLName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = prefs.getString('userLName');
    return user;
  }

  Future getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var user = prefs.getString('userEmail');
    return user;
  }

  Future saveName() async {
    userFname = await getUserFName();
    userLname = await getUserLName();
    userEmail = await getUserEmail();
  }

  // Check Uer Login or Not
  checkUserAlreadyLogin(BuildContext context) async {
    bool loginUser = await getloginUser();
    print('loginUser: $loginUser');
    var splashToken = await Provider.of<SignUpProvider>(context, listen: false)
        .getUserTokenSF();
    print('splashToken: $splashToken');
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

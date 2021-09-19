import 'dart:convert';

import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignUpProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var userEmail;
  var result;
  var token;

  Future signUp(
      {@required fName,
      @required lName,
      @required email,
      @required password}) async {
    try {
      userEmail = email;
      print("Sign Up ---------------------------");
      final _response = await http.post(
        Uri.parse(signUpApi),
      headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({'email': email, 'password': password}),
      );
      result = jsonDecode(_response.body);
      // print('result: $result');
      return result;
    } catch (e) {
      return e;
    }
  }

  getUserTokenSF() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? token = prefs.getString('token');
    return token;
  }
}

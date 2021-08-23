import 'dart:convert';

import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class SignUpProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  signUp(
      {@required fName,
      @required lName,
      @required email,
      @required password}) async {
    try {
      print("Sign Up ---------------------------");
      final _response = await http.post(
        Uri.parse(signUpApi),
        headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/x-www-form-urlencoded'
        },
        body: jsonEncode({
          'First_name': fName,
          'last_name': lName,
          'email': email,
          'password': password
        }),
      );
      print("code ${_response.statusCode}");
      print("contentLength ${_response.contentLength}");
      print("headers ${_response.headers}");
      print("persistentConnection ${_response.persistentConnection}");
      print("reasonPhrase ${_response.reasonPhrase}");
      print("request ${_response.request}");

      print('_response: $_response');
      var result = jsonDecode(_response.body);
      print('result: $result');
    } catch (e) {
      return e.toString();
    }
  }
}

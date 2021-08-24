import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;

  signIn({@required email, @required password}) async {
    try {
      print(email);
      print("Sign In ---------------------------");
      final _response = await http.post(
        Uri.parse(signInApi),
        headers: headers,
        body: jsonEncode({'email': email, 'password': password}),
      );

      result = jsonDecode(_response.body);
    } catch (e) {
      return e.toString();
    }
  }
}

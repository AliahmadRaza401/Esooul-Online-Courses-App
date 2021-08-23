import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class LoginProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  signIn({@required email, @required password}) async {
    try {
      print(email);
      print("Sign In ---------------------------");
      final _response = await http.post(
        Uri.parse(signInApi),
        headers: {'content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );
      print("code ${_response.statusCode}");
      print("contentLength ${_response.contentLength}");
      print("headers ${_response.headers}");
      print("persistentConnection ${_response.persistentConnection}");
      print("reasonPhrase ${_response.reasonPhrase}");
      print("request ${_response.request}");

      var result = jsonDecode(_response.body);
      print('result: $result');
    } catch (e) {
      return e.toString();
    }
  }
}

import 'dart:convert';

import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class OtpVerificationProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;
  var uuniqueID;

  Future otpVerification(
      {@required otp,
      }) async {
    try {
      print("Sign Up ---------------------------");
      final _response = await http.post(
        Uri.parse(otpVerificationApi),
        headers: headers,
        body: jsonEncode({
          'uniqueId': uuniqueID,
          'otp': otp,
        }),
      );
      result = jsonDecode(_response.body);
      // print('result: $result');
      return result;
    } catch (e) {
      return e.toString();
    }
  }
}

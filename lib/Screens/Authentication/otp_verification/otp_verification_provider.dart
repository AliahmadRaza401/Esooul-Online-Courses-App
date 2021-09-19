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

  Future otpVerification({
    @required otp,
    @required uniqueID,
  }) async {
    try {
      print("---------Otp Varification------------------");
      print(otp);
      print(uniqueID);
      final _response = await http.post(
        Uri.parse(otpVerificationApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          'uniqueId': uniqueID,
          'otp': otp,
        }),
      );
      result = jsonDecode(_response.body);
      return result;
    } catch (e) {
      return e;
    }
  }

  Future resendOTP({@required email}) async {
    try {
      print("--------- Resend Otp Varification------------------");
      final _response = await http.post(
        Uri.parse(boardAreasApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode({
          'email': email,
        }),
      );
      result = jsonDecode(_response.body);
      print('Resend OTp result: $result');
      return result;
    } catch (e) {
      return e.toString();
    }
  }
}

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AppToast {
  static getSuccessToast({required String msg}) async {
    await Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xffFF9D43),
        textColor: Colors.white,
        fontSize: 16.0);
  }
}

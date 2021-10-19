import 'dart:convert';

import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/listening_test_model.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:esooul/modeles/topic_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListeningProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var audioURl;

  // listeningTest(token) async {
  //   try {
  //     print("----------- Get Listening Test Data ---------------");
  //     print(listeningTestApi);
  //     final _responce = await http.get(
  //       Uri.parse(listeningTestApi),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Accept': 'application/json',
  //         'Authorization': 'Bearer $token',
  //       },
  //     );

  //     // var result = jsonDecode(_responce.body);
  //     // print('Listening Test Data : $result');
  //     final welcome = listeningTestModelFromJson(_responce.body);
  //     // print('welcome: ${welcome.data}');
  //     return welcome;
  //   } catch (e) {
  //     return CommomWidget().okayAlertDialog(
  //       context,
  //       "Failed",
  //      "Something wrong please try again or check Internet Connection",
  //     );
  //   }
  // }
}

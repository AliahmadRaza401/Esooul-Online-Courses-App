import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class PaperCategoreyProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;

  // Future getPaperList(educationalBoardsId) async {
  //   try {
  //     print("-----------Grade List Getting----------------");
  //     final _response = await http.get(
  //       Uri.parse(gradesApi(educationalBoardsId)),
  //       headers: headers,
  //     );

  //     result = jsonDecode(_response.body);
  //     return result;
  //   } catch (e) {
  //     return e.toString();
  //   }
  // }
}

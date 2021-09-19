import 'dart:convert';

import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class PaperCategoreyProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var paperType;
  var pastPaperyearsList = [];

  pastPaperYear(token,course_id) async {
    try {
      print("-----------past paper Year---------------");
      final _responce = await http.get(
        Uri.parse(pastPaperYearsApi(course_id)),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      var result = jsonDecode(_responce.body);
      print('Year result: $result');

      pastPaperyearsList.clear();
      if (result['status'] == 200) {
        var data = result['data'];
        for (var i in data) {
          PastPaperYearModel _yearModel =
              PastPaperYearModel(past_papers_years: i['past_papers_years']);
          pastPaperyearsList.add(_yearModel);
        }
        return pastPaperyearsList;
      } else {}
    } catch (e) {
      return e;
    }
  }
}

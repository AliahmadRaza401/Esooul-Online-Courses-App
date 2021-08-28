import 'dart:convert';

import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/yearly_paper_model.dart';
import 'package:http/http.dart' as http;

import 'package:flutter/material.dart';

class YearlyPaperProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;
  var yearlyPaperData = [];
  var questionType;

  Future yearlyPaperList(paperType, courseID) async {
    try {
      print("----------- Yearly Paper Getting----------------");
      final _response = await http.post(
        Uri.parse(pastPaperListingApi),
        headers: headers,
        body: jsonEncode({
          'paper_type': paperType,
          'paper_year': 2015,
          'course_id': courseID
        }),
      );

      result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');
        yearlyPaperData.clear();
        for (var i in data) {
          YearlyPaperModel paperData = YearlyPaperModel(
            id: i['id'],
            title: i['title'],
            image: i['image'],
            course: i['course'],
            type: i['type'],
            year: i['year'],
          );
          yearlyPaperData.add(paperData);
        }
        // print('boardListData: $boardListData');
        return yearlyPaperData;
      } else {
        return "Error";
      }
    } catch (e) {
      return e.toString();
    }
  }
}
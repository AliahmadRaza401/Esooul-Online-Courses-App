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
  var yearlyPaperID;

  Future yearlyPaperList(token, paperType, courseID, year) async {
    try {
      print("----------- Yearly Paper Getting----------------");
      final _response = await http.post(
        Uri.parse(pastPaperListingApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'paper_type': paperType,
          'paper_year': year,
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
              discount: i['discount'],
              price: i['price'],
            payment_status: i['payment_status'],
           
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

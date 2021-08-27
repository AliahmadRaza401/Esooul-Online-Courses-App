import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/course_list_model.dart';
import 'package:esooul/modeles/grade_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class SubjectListProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var courseListData = [];
  var selectedcourse;

  Future getsubjectList(gradeID) async {
    try {
      print("-----------Grade List Getting----------------");
      final _response = await http.get(
        Uri.parse(gradeCourses(gradeID)),
        headers: headers,
      );

      var result = jsonDecode(_response.body);

      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');

        for (var i in data) {
          CourseListModel gradeData = CourseListModel(
            id: i['id'],
            title: i['title'],
            image: i['image'],
            category: i['category'],
            description: i['description'],
            grade: i['grade'],
            original_price: i['original_price'],
            price_to_show: i['price_to_show'],
            status: i['status'],
          );
          courseListData.add(gradeData);
        }
        // print('boardListData: $boardListData');
        return courseListData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

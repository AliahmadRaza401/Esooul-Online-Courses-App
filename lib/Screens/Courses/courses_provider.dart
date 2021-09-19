import 'dart:convert';

import 'package:esooul/Screens/Authentication/signUp/signUp_provider.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/courses_model.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:esooul/modeles/topic_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class CoursesProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var coursesList = [];
  coursesGet(token) async {
    try {
      print("----------- Get Courses ---------------");
   
      final _responce = await http.get(
        Uri.parse(coursesApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      var result = jsonDecode(_responce.body);
      print('Course Topic : $result');

      coursesList.clear();
      if (result['status'] == 200) {
        var data = result['data'];
        for (var i in data) {
          CoursesModel courses = CoursesModel(
              i['id'],
              i['title'],
              i['grade'],
              i['image'],
              i['description'],
              i['original_price'],
              i['price_to_show'],
              i['category'],
              i['instructor'],
              i['created_at']);
          coursesList.add(courses);
        }
        return coursesList;
      } else {
        return CommomWidget()
            .okayAlertDialog(context, "Failed", "Something Wrong");
      }
    } catch (e) {
      return CommomWidget().okayAlertDialog(
        context,
        "Failed",
        e.toString(),
      );
    }
  }
}

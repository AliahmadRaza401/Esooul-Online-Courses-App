import 'dart:convert';

import 'package:esooul/Screens/Ielts%20Section/Writing/writing_modules.dart';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:esooul/modeles/topic_model.dart';
import 'package:esooul/modeles/writing_test_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class WritingProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var writingTextList = [];

  writingTest(token) async {
    try {
      print("----------- Get writing Test Data ---------------");
      print(writingTestApi);
      final _responce = await http.get(
        Uri.parse(writingTestApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      var result = jsonDecode(_responce.body);
      // print('writing Test Data  : $result');
      var data = result['data'];
      return result;
      // writingTextList.clear();
      // if (result['status'] == 200) {
      //   var data = result['data'];
      //   for (var i in data) {
      //     WritingTestModel testModel = WritingTestModel(
      //         name: i['name'],
      //         about: i['about'],
      //         instruction: i['instruction'],
      //         bar_chart: i['bar_chart'],
      //         line_graph: i['line_graph'],
      //         pie_chart: i['pie_chart'],
      //         multiple_graphs: i['multiple_graphs'],
      //         process_diagram: i['process_diagram'],
      //         table_chart: i['table_chart'],
      //         maps: i['maps'],
      //         opinion_essay: i['opinion_essay'],
      //         discussion_essay: i['discussion_essay'],
      //         process_solution_essay: i['process_solution_essay'],
      //         advantages_disadvantages_essay:
      //             i['advantages_disadvantages_essay'],
      //         double_question_essay: i['double_question_essay'],
      //         type: i['type']);
      //     writingTextList.add(testModel);
      //   }
      //   return writingTextList;
      // } else {
      //   return CommomWidget()
      //       .okayAlertDialog(context, "Failed", "Something Wrong");
      // }
    } catch (e) {
      return CommomWidget().okayAlertDialog(
        context,
        "Failed",
        e.toString(),
      );
    }
  }
}

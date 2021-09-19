import 'dart:convert';
import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/custom_objective_model.dart';
import 'package:esooul/modeles/grade_list_model.dart';
import 'package:esooul/modeles/pastObjective_model.dart';
import 'package:esooul/modeles/past_subjective_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class CustomObjectiveProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var customObjectiveData = [];

  Future customObjective(token,paperID) async {
    try {
      print("-----------Objective List Getting----------------");
      final _response = await http.post(
        Uri.parse(customObjectiveApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'topic_id': paperID,
          'question_type': "objective",
        }),
      );

      var result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');
        customObjectiveData.clear();
        for (var i in data) {
          CustomObjectiveModel modelData = CustomObjectiveModel(
            id: i['id'],
            answer: i['answer'],
            question: i['question'],
            video: i['video'],
            option: i['option'],
            paper_title: i['paper_title'],
          );
          customObjectiveData.add(modelData);
        }
        // print('boardListData: $boardListData');
        return customObjectiveData;
      } else {
        return print("Status Code : ${_response.statusCode}");
      }
    } catch (e) {
      return CommomWidget().okayAlertDialog(context, "Fail", e.toString());
    }
  }
}

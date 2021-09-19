import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/grade_list_model.dart';
import 'package:esooul/modeles/pastObjective_model.dart';
import 'package:esooul/modeles/past_subjective_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class PastObjectiveProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var pastObjectiveData = [];

  Future pastObjective(token,paperID) async {
    try {
      print("-----------Objective List Getting----------------");
      final _response = await http.post(
        Uri.parse(pastObjectiveApi),
         headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'paper_id': paperID,
          'question_type': "objective",
        }),
      );

      var result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');
        pastObjectiveData.clear();
        for (var i in data) {
          PastObjectiveModel modelData = PastObjectiveModel(
            id: i['id'],
            answer: i['answer'],
            question: i['question'],
            video: i['video'],
            option: i['option'],
            paper_title: i['paper_title'],
          );
          pastObjectiveData.add(modelData);
        }
        // print('boardListData: $boardListData');
        return pastObjectiveData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/grade_list_model.dart';
import 'package:esooul/modeles/past_subjective_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class PastSubjectiveProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var pastSubjectiveData = [];

  Future pastSubjective() async {
    try {
      print("-----------subjective List Getting----------------");
      final _response = await http.post(
        Uri.parse(pastSubjectiveApi),
        headers: headers,
        body: jsonEncode({
          'past_paper_id': "MA",
          'question_type': "subjective",
        }),
      );

      var result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');
        pastSubjectiveData.clear();
        for (var i in data) {
          PastSubjectiveModel modelData = PastSubjectiveModel(
            id: i['id'],
            answer: i['answer'],
            description: i['description'],
            paper_id: i['paper_id'],
            question: i['question'],
            video: i['video'],
          );
          pastSubjectiveData.add(modelData);
        }
        // print('boardListData: $boardListData');
        return pastSubjectiveData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

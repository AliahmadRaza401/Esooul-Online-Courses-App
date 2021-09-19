import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/custom_subjective_model.dart';
import 'package:esooul/modeles/past_subjective_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class CustomSubjectiveProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var customSubjectiveQuestionData = [];
  var customSubjectiveTopicsData = [];
  var questionPdf = [];

  Future customSubjective(token,paperID) async {
    try {
      print("-----------subjective List Getting----------------");
      final _response = await http.post(
        Uri.parse(customSubjectiveApi),
         headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
        body: jsonEncode({
          'topic_id': paperID,
          'question_type': "subjective",
        }),
      );

      var result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');

        var customQuestion = result['data']['custom_questions'];
        var customTopics = result['data']['topic_details'];
        customSubjectiveQuestionData.clear();
        customSubjectiveTopicsData.clear();

        for (var i in customQuestion) {
          CustomSubjectiveQuestionModel modelData =
              CustomSubjectiveQuestionModel(
            id: i['id'],
            answer: i['answer'],
            description: i['description'],
            question: i['question'],
            video: i['video'],
            paper_title: i['paper_title'],
            topic_title: i['topic_title'],
          );
          customSubjectiveQuestionData.add(modelData);
        }
        print('customSubjectiveQuestionData: $customSubjectiveQuestionData');


        for (var i in customTopics) {
          CustomSubjectiveTopicModel modelData =
              CustomSubjectiveTopicModel(
            id: i['id'],
            video: i['video'],
           title:  i['title'],
          );
          customSubjectiveTopicsData.add(modelData);
        }
        print('customSubjectiveTopicsData: $customSubjectiveTopicsData');

        return customSubjectiveQuestionData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

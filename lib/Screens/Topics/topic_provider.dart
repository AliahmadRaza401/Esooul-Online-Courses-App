import 'dart:convert';

import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:esooul/modeles/topic_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class TopicProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var topicList = [];
  var selectedTopicID = [];

  topicGet(course_id) async {
    try {
      print("----------- Get Topic ---------------");
      final _responce = await http.get(
        Uri.parse(topicsApi(course_id)),
        headers: headers,
      );

      var result = jsonDecode(_responce.body);
      print('Course Topic : $result');

      topicList.clear();
      if (result['status'] == 200) {
        var data = result['data'];
        for (var i in data) {
          TopicModel _topicModel = TopicModel(
            course: i['course'],
            id: i['id'],
            image: i['image'],
            title: i['title'],
          );
          topicList.add(_topicModel);
        }
        return topicList;
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

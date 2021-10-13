import 'dart:convert';

import 'package:esooul/Widgets/dialog.dart';
import 'package:esooul/Widgets/header.dart';
import 'package:esooul/api/api.dart';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/past_paper_year_model.dart';
import 'package:esooul/modeles/topic_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ListeningProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var topicList = [];
  var selectedTopicID = [];
  var questionType;

  listeningTest(token) async {
    try {
      print("----------- Get Listening Test Data ---------------");
      final _responce = await http.get(
        Uri.parse(listeningTestApi),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token',
        },
      );

      var result = jsonDecode(_responce.body);
      print('Listening Test Data : $result');

      // topicList.clear();
      // if (result['status'] == 200) {
      //   var data = result['data'];
      //   for (var i in data) {
      //     TopicModel _topicModel = TopicModel(
      //       course: i['course'],
      //       id: i['id'],
      //       image: i['image'],
      //       title: i['title'],
      //               discount: i['discount'],
      //         price: i['price'],
      //       payment_status: i['payment_status'],
     
      //     );
      //     topicList.add(_topicModel);
      //   }
      //   return topicList;
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

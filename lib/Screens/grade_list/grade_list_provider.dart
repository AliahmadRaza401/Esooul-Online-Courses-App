import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/grade_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class GradeListProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var gradeListData = [];
  var selectedGradeID;

  Future getGradeList(educationalBoardsId) async {
    try {
      print("-----------Grade List Getting----------------");
      final _response = await http.get(
        Uri.parse(gradesApi(educationalBoardsId)),
        headers: headers,
      );

      var result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');

        for (var i in data) {
          GradeListModel gradeData = GradeListModel(
            id: i['id'],
            title: i['title'],
            country: i['country'],
            image: i['image'],
            educational_board: i['educational_board'],
          );
          gradeListData.add(gradeData);
        }
        // print('boardListData: $boardListData');
        return gradeListData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

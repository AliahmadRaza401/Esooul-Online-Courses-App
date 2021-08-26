import 'dart:convert';
import 'package:esooul/config/config.dart';
import 'package:esooul/modeles/boards_list_model.dart';
import 'package:http/http.dart' as http;
import 'package:esooul/api/api.dart';
import 'package:flutter/material.dart';

class BoardListProvider extends ChangeNotifier {
  late BuildContext context;

  init({required BuildContext context}) {
    this.context = context;
  }

  var result;
  var boardListData = [];

  Future getBoardList() async {
    try {
      print("-----------Boards List Getting----------------");
      final _response = await http.get(
        Uri.parse(educationalBoardsApi("jR")),
        headers: headers,
      );

      result = jsonDecode(_response.body);
      if (result['status'] == 200) {
        var data = result['data'];
        print('data: $data');

        for (var i in data) {
          BoardsListModel modelData = BoardsListModel(
            id: i['id'],
            title: i['title'],
            country: i['country'],
            image: i['image'],
          );
          boardListData.add(modelData);
        }
        // print('boardListData: $boardListData');
        return boardListData;
      } else {
        return null;
      }
    } catch (e) {
      return e.toString();
    }
  }
}

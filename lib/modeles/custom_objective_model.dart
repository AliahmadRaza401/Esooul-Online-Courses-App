import 'package:flutter/widgets.dart';

class CustomObjectiveModel {
  var id;
  var paper_title;
  var question;
  var answer;
  var video;
  List option;
  CustomObjectiveModel(
      {@required this.id,
      @required this.paper_title,
      @required this.question,
      @required this.answer,
      @required this.video,
      required this.option});
}

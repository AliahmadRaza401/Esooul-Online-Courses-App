import 'package:flutter/widgets.dart';

class PastObjectiveModel {
  var id;
  var paper_title;
  var question;
  var answer;
  var video;
  List option;
  PastObjectiveModel(
      {@required this.id,
      @required this.paper_title,
      @required this.question,
      @required this.answer,
      @required this.video,
      required this.option});
}

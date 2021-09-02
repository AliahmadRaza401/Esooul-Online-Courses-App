import 'package:flutter/widgets.dart';

class CustomSubjectiveQuestionModel {
  var id;
  var paper_title;
  var topic_title;
  var video;
  var description;
  var question;
  var answer;
  CustomSubjectiveQuestionModel(
      {@required this.id,
      @required this.paper_title,
      @required this.topic_title,
      @required this.video,
      @required this.description,
      @required this.question,
      @required this.answer});
}

class CustomSubjectiveTopicModel {
  var id;
  var title;
  var video;

  CustomSubjectiveTopicModel({
    @required this.id,
    @required this.title,
    @required this.video,
  });
}

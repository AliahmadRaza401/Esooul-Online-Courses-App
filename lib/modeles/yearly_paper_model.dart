import 'package:flutter/widgets.dart';

class YearlyPaperModel {
  var id;
  var title;
  var type;
  var course;
  var year;
  var image;

  YearlyPaperModel(
      {@required this.id,
      @required this.title,
      @required this.type,
      @required this.course,
      @required this.year,
      @required this.image});
}

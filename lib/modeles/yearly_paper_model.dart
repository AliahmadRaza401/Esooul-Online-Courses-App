import 'package:flutter/widgets.dart';

class YearlyPaperModel {
  var id;
  var title;
  var type;
  var course;
  var year;
  var image;
  var payment_status;

  YearlyPaperModel(
      {@required this.id,
      @required this.title,
      @required this.type,
      @required this.course,
      @required this.year,
      @required this.image,
      @required this.payment_status});
}

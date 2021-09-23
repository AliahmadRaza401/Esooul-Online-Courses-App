import 'package:flutter/widgets.dart';

class YearlyPaperModel {
  var id;
  var title;
  var type;
  var course;
  var year;
  var image;
  var price;
  var discount;
  var payment_status;

  YearlyPaperModel(
      {@required this.id,
      @required this.title,
      @required this.type,
      @required this.course,
      @required this.year,
      @required this.image,
       @required this.price,
      @required this.discount,
      @required this.payment_status});
}

import 'package:flutter/widgets.dart';

class CourseListModel {
  var id;
  var title;
  var description;
  var image;
  var original_price;
  var price_to_show;
  var status;
  var grade;
  var category;

  CourseListModel(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.image,
      @required this.original_price,
      @required this.price_to_show,
      @required this.status,
      @required this.grade,
      @required this.category});
}

import 'package:flutter/widgets.dart';

class CourseCardItemModel {
  @required
  var id;
  @required
  var title;
  @required
  var course;
  @required
  var year;
  @required
  var image;
  @required
  var discount;
  @required
  var price;
  @required
  var status;
  bool selected;
  CourseCardItemModel(this.id, this.title, this.course, this.image, this.year,
      this.price,this.discount ,this.status, this.selected);
}

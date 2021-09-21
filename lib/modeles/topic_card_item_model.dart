import 'package:flutter/widgets.dart';

class TopicCardItemModel {
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
  var price;
  @required
  var status;
  bool selected ;
  TopicCardItemModel(this.id, this.title, this.course, this.image, this.year,
      this.price, this.status, this.selected);
}

import 'package:flutter/widgets.dart';

class TopicModel {
  var id;
  var title;
  var image;
  var course;
  var price;
  var discount;
  var payment_status;
  TopicModel({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.course,
     @required this.price,
    @required this.discount,
    @required this.payment_status,
  });
}

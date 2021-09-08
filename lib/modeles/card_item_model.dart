import 'package:flutter/widgets.dart';

class CardItemModel {
  @required
  var id;
  @required
  var title;
  @required
  var grade;
  @required
  var image;
  @required
  var desc;
  @required
  var price;
  @required
  var status;
  bool selected ;
  CardItemModel(this.id, this.title, this.grade, this.image, this.desc,
      this.price, this.status, this.selected);
}

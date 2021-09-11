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
  var orgPrice;
    @required
  var showPrice;
  @required
  var status;
  bool selected ;
  CardItemModel(this.id, this.title, this.grade, this.image, this.desc,
      this.showPrice,this.orgPrice, this.status, this.selected);
}

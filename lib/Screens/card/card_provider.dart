import 'package:esooul/modeles/course_card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardProvider extends ChangeNotifier {
  List courseCardItem = [];
  List topicCardItem = [];
  int topicPrice = 0;
  int coursePrice = 0;

  void addToCardCourses({required var item}) {
    courseCardItem.add(item);
    notifyListeners();
  }

  void deleteCourseItem({@required index}) {
    // cardItem.remove(index);
    print("Delete Index item:  $index");
    courseCardItem.remove(courseCardItem[index]);
    notifyListeners();
  }

  void addToCardTopic({required var item}) {
    topicCardItem.add(item);
    notifyListeners();
  }

  void deleteTopicItem({@required index}) {
    // cardItem.remove(index);
    print("Delete Index:  $index");
    topicCardItem.remove(topicCardItem[index]);
    notifyListeners();
  }
  // addPrice(double orgPrice) {
  //   double orgPrie = 0;
  //   price = orgPrie + orgPrice;
  //   totalPrice();
  // }

  // removePrice(double orgPrice) {
  //   double orgPrie = 0;
  //   price = orgPrie - orgPrice;
  //   totalPrice();
  // }

  totalCoursePrice() {
    var totalPrice = 0;
    var total = totalPrice + coursePrice;
    print('total: $total');
    notifyListeners();
    return total;
  }

  totalTopicPrice() {
    var totalPrice = 0;
    var total = totalPrice + topicPrice;
    ;
    print('total: $total');
    notifyListeners();
    return total;
  }

  notifyListeners();
}

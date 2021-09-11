import 'package:esooul/modeles/card_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardProvider extends ChangeNotifier {
  List cardItem = [];
  var price = 2000.0;

  void addToCard({required var item}) {
    cardItem.add(item);
    notifyListeners();
  }

  void deleteItem({@required index}) {
    // cardItem.remove(index);
    print("Delete Index:  $index");
    cardItem.remove(cardItem[index]);
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

  totalPrice() {
    var totalPrice = 0;
    var total = totalPrice + price;
    print('total: $total');
    notifyListeners();
    return total;
  }
}

import 'package:esooul/modeles/card_item_model.dart';
import 'package:flutter/widgets.dart';

class CardProvider extends ChangeNotifier {
  List cardItem = [];

  void addToCard({required var item}) {
    cardItem.add(item);
    notifyListeners();
  }

  void deleteITem({@required index}) {
    cardItem.remove(index);
    print("Delete Index:  $index");
    notifyListeners();
  }
}

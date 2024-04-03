import 'package:flutter/foundation.dart';

class ButtonProvider extends ChangeNotifier {
  List<String> favoriteList = [];

  void addToFavorite(String buttonText) {
    favoriteList.add(buttonText);
    notifyListeners();
  }

  void removeFromFavorite(String buttonText) {
    favoriteList.remove(buttonText);
    notifyListeners();
  }
}

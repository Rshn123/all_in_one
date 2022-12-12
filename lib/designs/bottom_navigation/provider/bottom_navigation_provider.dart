import 'package:flutter/cupertino.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int currentIndex = 1;
  changeIndex(int changedIndex) {
    currentIndex = changedIndex;
    notifyListeners();
  }
}

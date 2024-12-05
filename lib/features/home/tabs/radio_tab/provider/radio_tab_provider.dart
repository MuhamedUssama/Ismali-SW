import 'package:flutter/material.dart';

class RadioTabProvider extends ChangeNotifier {
  int currectIndex = 0;

  void changeTab(int index) {
    currectIndex = index;
    notifyListeners();
  }
}

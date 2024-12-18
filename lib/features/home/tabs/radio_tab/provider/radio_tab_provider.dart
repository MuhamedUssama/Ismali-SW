import 'package:flutter/material.dart';

class RadioTabProvider extends ChangeNotifier {
  int currectIndex = 0;

  bool isPlayed = false;
  bool isMute = false;

  void changeTab(int index) {
    currectIndex = index;
    notifyListeners();
  }
}

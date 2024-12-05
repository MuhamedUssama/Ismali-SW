import 'package:flutter/material.dart';
import 'package:islami_app/features/home/tabs/hadeth_tab/hadeth_tab.dart';
import 'package:islami_app/features/home/tabs/quran_tab/quran_tab.dart';
import 'package:islami_app/features/home/tabs/radio_tab/radio_tab.dart';
import 'package:islami_app/features/home/tabs/sebha_tab/sebha_tab.dart';
import 'package:islami_app/features/home/tabs/time_tab/time_tab.dart';

class HomeProvider extends ChangeNotifier {
  int currentIndex = 0;

  List<Widget> tabs = [
    const QuranTab(),
    const HadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const TimeTab(),
  ];

  void onTabClicked(int tabIndex) {
    if (currentIndex != tabIndex) {
      currentIndex = tabIndex;
      notifyListeners();
    }
  }
}

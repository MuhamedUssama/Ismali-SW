import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  PageController pageController = PageController();
  ValueNotifier<int> dotIndex = ValueNotifier(0);

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}

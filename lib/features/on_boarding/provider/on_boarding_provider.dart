import 'package:flutter/material.dart';

class OnBoardingProvider extends ChangeNotifier {
  bool isClicked = true;
  String languageCode = 'en';

  void onSwitchLanguage(String selectedLanguageCode) {
    isClicked = !isClicked;
    if (selectedLanguageCode == languageCode) return;
    languageCode = selectedLanguageCode;
    notifyListeners();
  }
}

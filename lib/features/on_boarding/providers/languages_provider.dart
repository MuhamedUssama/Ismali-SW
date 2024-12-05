import 'package:flutter/material.dart';
import 'package:islami_app/core/cache/shared_preferences_helper.dart';
import 'package:islami_app/core/utils/app_constants.dart';

class LanguagesProvider extends ChangeNotifier {
  bool isClicked = true;
  String languageCode = 'en';

  LanguagesProvider() {
    getSavedLanguage();
    getIsClicked();
  }

  void onSwitchLanguage(String selectedLanguageCode) {
    isClicked = !isClicked;
    if (selectedLanguageCode == languageCode) return;
    languageCode = selectedLanguageCode;
    saveLanguage(languageCode);
    notifyListeners();
  }

  Future<void> saveLanguage(String lang) async {
    await SharedPreferencesHelper.saveData(
      key: AppConstants.languageKey,
      value: lang,
    );
  }

  Future<void> getSavedLanguage() async {
    languageCode = await SharedPreferencesHelper.getString(
      key: AppConstants.languageKey,
    );

    if (languageCode.isEmpty) {
      languageCode = 'en';
    }

    notifyListeners();
  }

  Future<void> saveIsClicked(bool isClicked) async {
    await SharedPreferencesHelper.saveData(
      key: AppConstants.isClickedKey,
      value: isClicked,
    );
  }

  Future<void> getIsClicked() async {
    isClicked = await SharedPreferencesHelper.getBool(
      key: AppConstants.isClickedKey,
    );

    notifyListeners();
  }
}

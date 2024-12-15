import 'package:flutter/material.dart';
import 'package:islami_app/core/utils/app_constants.dart';

class QuranTabProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  bool isTyping = false;

  List<String> allSuraName = AppConstants.soraNames;
  List<String> allAyat = AppConstants.soraAyatCount;

  List<String> filteredSuraName = [];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void addFilteredSuraNamesToFilteredList(String searchedSuraName) {
    isTyping = true;

    filteredSuraName = allSuraName
        .where((suraName) => suraName.toLowerCase().contains(searchedSuraName))
        .toList();

    notifyListeners();
  }
}

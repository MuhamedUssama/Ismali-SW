import 'package:flutter/material.dart';
import 'package:islami_app/features/home/tabs/quran_tab/models/quran_model.dart';

class QuranTabProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  bool isTyping = false;
  List<QuranModel> fullQuranList = QuranModel.quran;

  List<QuranModel> filteredQuranList = [];

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  void addFilteredSuraNamesToFilteredList(String searchedSuraName) {
    isTyping = true;

    filteredQuranList = fullQuranList
        .where(
          (sura) => sura.titleInArabic.toLowerCase().contains(searchedSuraName),
        )
        .toList();

    notifyListeners();
  }
}

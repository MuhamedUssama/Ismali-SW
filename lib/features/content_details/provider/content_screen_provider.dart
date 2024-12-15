import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/content_screen_model.dart';

class ContentScreenProvider extends ChangeNotifier {
  final ContentScreenModel contentScreenModel;
  ContentScreenProvider({required this.contentScreenModel});

  String fileContent = '';
  List<String> fileLines = [];

  int? tappedAyaIndex;

  void onAyaClicked(int index) {
    tappedAyaIndex = index;

    notifyListeners();
  }

  void readContent() async {
    if (contentScreenModel.isQuran) {
      String file = await rootBundle
          .loadString('assets/quran/${contentScreenModel.fileName}');

      fileLines = file.split("\n");
    } else {
      String file = await rootBundle
          .loadString('assets/hadeth/${contentScreenModel.fileName}');
      fileContent = file;
    }

    notifyListeners();
  }
}

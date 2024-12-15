import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../models/content_screen_model.dart';

class ContentScreenProvider extends ChangeNotifier {
  final ContentScreenModel contentScreenModel;

  String fileContent = '';

  List<String> fileLines = [];

  ContentScreenProvider({required this.contentScreenModel});

  void readContent() async {
    if (contentScreenModel.isQuran) {
      String file = await rootBundle
          .loadString('assets/quran/${contentScreenModel.fileName}');

      fileLines = file.split("\n");
      // for (int i = 0; i < fileLines.length; i++) {
      //   fileLines[i] += "(${i + 1})  ";
      // }

      // fileContent = fileLines.join();
      // fileContent = fileLines;
    } else {
      String file = await rootBundle
          .loadString('assets/hadeth/${contentScreenModel.fileName}');
      fileContent = file;
    }

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/features/hadeeth_details/models/hadeeth_details_model.dart';

class HadeathDetailsProvider extends ChangeNotifier {
  final HadeethDetailsModel hadeethModel;

  HadeathDetailsProvider(this.hadeethModel);

  String fileContent = '';
  void readContent() async {
    fileContent =
        await rootBundle.loadString('assets/hadeth/${hadeethModel.fileName}');

    notifyListeners();
  }
}

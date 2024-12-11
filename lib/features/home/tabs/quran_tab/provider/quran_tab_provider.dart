import 'package:flutter/material.dart';

class QuranTabProvider extends ChangeNotifier {
  TextEditingController searchController = TextEditingController();

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}

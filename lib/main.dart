import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/on_boarding/providers/languages_provider.dart';
import 'islami_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => LanguagesProvider(),
    child: const IslamiApp(),
  ));
}

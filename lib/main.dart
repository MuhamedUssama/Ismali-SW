import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/cache/shared_preferences_helper.dart';
import 'features/home/home_provider.dart';
import 'features/on_boarding/providers/languages_provider.dart';
import 'islami_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferencesHelper.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LanguagesProvider()),
        ChangeNotifierProvider(create: (context) => HomeProvider()),
      ],
      child: const IslamiApp(),
    ),
  );
}

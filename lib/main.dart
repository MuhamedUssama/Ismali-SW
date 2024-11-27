import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'features/on_boarding/provider/on_boarding_provider.dart';
import 'islami_app.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => OnBoardingProvider(),
    child: const IslamiApp(),
  ));
}

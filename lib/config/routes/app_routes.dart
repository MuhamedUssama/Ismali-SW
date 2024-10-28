import 'package:flutter/material.dart';

import '../../features/on_boarding/on_bprading_screen.dart';
import 'routes_name.dart';

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => const OnBpradingScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => unDefinePageRoute());
    }
  }

  static Widget unDefinePageRoute() {
    return const Scaffold(
      body: Center(
        child: Text("Un Defined PageRoute"),
      ),
    );
  }
}

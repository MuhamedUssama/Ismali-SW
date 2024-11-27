import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../features/on_boarding/on_bprading_screen.dart';
import '../../features/on_boarding/providers/on_boarding_provider.dart';
import 'routes_name.dart';

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => OnBoardingProvider(),
            child: const OnBpradingScreen(),
          ),
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

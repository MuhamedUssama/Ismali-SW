import 'package:flutter/material.dart';
import 'package:islami_app/features/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../../features/home/home_provider.dart';
import '../../features/on_boarding/on_boarding_screen.dart';
import '../../features/on_boarding/providers/on_boarding_provider.dart';
import 'routes_name.dart';

class AppRoutes {
  static Route onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => OnBoardingProvider(),
            child: const OnBoardingScreen(),
          ),
        );

      case RoutesName.homeScreen:
        return MaterialPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => HomeProvider(),
            child: const HomeScreen(),
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

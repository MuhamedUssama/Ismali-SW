import 'package:flutter/material.dart';
import 'package:islami_app/features/home/home_screen.dart';
import 'package:provider/provider.dart';

import '../../features/content_details/content_details_screen.dart';
import '../../features/content_details/models/content_screen_model.dart';
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
          builder: (context) => const HomeScreen(),
        );

      case RoutesName.contentScreen:
        return MaterialPageRoute(
          builder: (context) => ContentDetailsScreen(
            contentScreenModel: ContentScreenModel(
              titleInArabic: "",
              titleInEnglish: "",
              fileName: "",
              isQuran: true,
            ),
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

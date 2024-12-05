import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/routes/routes_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_theme.dart';
import 'package:islami_app/features/on_boarding/providers/languages_provider.dart';
import 'package:provider/provider.dart';

import 'config/routes/app_routes.dart';

class IslamiApp extends StatelessWidget {
  const IslamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    LanguagesProvider provider = Provider.of<LanguagesProvider>(context);
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        title: 'Islami App',
        theme: AppTheme.themeMode,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        locale: Locale(provider.languageCode),
        initialRoute: RoutesName.onBoarding,
        onGenerateRoute: (settings) => AppRoutes.onGenerate(settings),
      ),
    );
  }
}

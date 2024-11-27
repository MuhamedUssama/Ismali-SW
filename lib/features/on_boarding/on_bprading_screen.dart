import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'widgets/on_boarding_widget.dart';

class OnBpradingScreen extends StatelessWidget {
  const OnBpradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          children: [
            OnBoardingWidget(
              heightBetweenImageAndText: 55.75.h,
              heightBetweenTwoTexts: 48.h,
            ),
            Container(color: Colors.blue),
            Container(color: Colors.green),
          ],
        ),
      ),
    );
  }
}

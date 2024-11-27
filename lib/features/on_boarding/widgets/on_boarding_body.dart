import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/on_boarding/providers/on_boarding_provider.dart';

import 'choose_language_widget.dart';
import 'description_text.dart';
import 'on_boarding_widget.dart';

class OnBoardingBody extends StatelessWidget {
  final OnBoardingProvider provider;
  const OnBoardingBody({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: PageView(
        controller: provider.pageController,
        onPageChanged: (value) {
          provider.dotIndex.value = value;
        },
        children: [
          OnBoardingWidget(
            title: AppLocalizations.of(context)!.chooseLanguage,
            image: AppImages.onBoarding1,
            heightBetweenImageAndText: 55.75.h,
            heightBetweenTwoTexts: 48.h,
            theLastWidget: const ChooseLanguageWidget(),
          ),
          OnBoardingWidget(
            title: AppLocalizations.of(context)!.welcomeToIslami,
            image: AppImages.onBoarding2,
            heightBetweenImageAndText: 48.h,
            heightBetweenTwoTexts: 26.h,
            theLastWidget: DescriptionText(
              text: AppLocalizations.of(context)!.welcomeToIslamiDescribtion,
            ),
          ),
          OnBoardingWidget(
            title: AppLocalizations.of(context)!.readingTheQuran,
            image: AppImages.onBoarding3,
            heightBetweenImageAndText: 4.h,
            heightBetweenTwoTexts: 26.h,
            theLastWidget: DescriptionText(
              text: AppLocalizations.of(context)!.readingTheQuranDescribtion,
            ),
          ),
          OnBoardingWidget(
            title: AppLocalizations.of(context)!.bearish,
            image: AppImages.onBoarding4,
            heightBetweenImageAndText: 0.h,
            heightBetweenTwoTexts: 26.h,
            theLastWidget: DescriptionText(
              text: AppLocalizations.of(context)!.bearishDescribtion,
            ),
          ),
          OnBoardingWidget(
            title: AppLocalizations.of(context)!.holyQuranRadio,
            image: AppImages.onBoarding5,
            heightBetweenImageAndText: 8.h,
            heightBetweenTwoTexts: 26.h,
            theLastWidget: DescriptionText(
              text: AppLocalizations.of(context)!.holyQuranRadioDescribtion,
            ),
          ),
        ],
      ),
    );
  }
}

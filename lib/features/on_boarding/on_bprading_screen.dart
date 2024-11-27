import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'providers/on_boarding_provider.dart';
import 'widgets/choose_language_widget.dart';
import 'widgets/description_text.dart';
import 'widgets/on_boarding_widget.dart';

class OnBpradingScreen extends StatelessWidget {
  const OnBpradingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingProvider provider = Provider.of<OnBoardingProvider>(context);

    return Scaffold(
      body: SafeArea(
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
      ),
      bottomSheet: Container(
        color: AppColors.black,
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: ValueListenableBuilder(
          valueListenable: provider.dotIndex,
          builder: (context, value, child) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                value == 0
                    ? const SizedBox(width: 50)
                    : TextButton(
                        onPressed: () {
                          if (provider.dotIndex.value > 0) {
                            log('back');

                            provider.dotIndex.value -= 1;
                            provider.pageController.animateToPage(
                              duration: const Duration(milliseconds: 600),
                              curve: Curves.ease,
                              provider.dotIndex.value,
                            );
                          }
                        },
                        child: Text(
                          AppLocalizations.of(context)!.back,
                          style: AppTextStyles.text16GoldBold,
                        ),
                      ),
                SmoothPageIndicator(
                  controller: provider.pageController,
                  count: 5,
                  effect: const ExpandingDotsEffect(
                    activeDotColor: AppColors.gold,
                    dotColor: AppColors.grey,
                    expansionFactor: 3,
                  ),
                  onDotClicked: (index) {
                    provider.dotIndex.value = index;
                    provider.pageController.animateToPage(
                      duration: const Duration(milliseconds: 600),
                      curve: Curves.ease,
                      index,
                    );
                  },
                ),
                TextButton(
                  onPressed: () {
                    if (provider.dotIndex.value < 4) {
                      log('next');
                      provider.dotIndex.value += 1;
                      provider.pageController.animateToPage(
                        duration: const Duration(milliseconds: 600),
                        curve: Curves.ease,
                        provider.dotIndex.value,
                      );
                    }
                  },
                  child: Text(
                    value == 4
                        ? AppLocalizations.of(context)!.finish
                        : AppLocalizations.of(context)!.next,
                    style: AppTextStyles.text16GoldBold,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

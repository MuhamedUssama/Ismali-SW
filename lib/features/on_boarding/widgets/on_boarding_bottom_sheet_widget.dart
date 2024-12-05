import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/features/on_boarding/providers/on_boarding_provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingBottomSheetWidget extends StatelessWidget {
  final OnBoardingProvider provider;

  const OnBoardingBottomSheetWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

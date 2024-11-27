import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'choose_language_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  final double heightBetweenImageAndText;
  final double heightBetweenTwoTexts;

  const OnBoardingWidget({
    super.key,
    required this.heightBetweenImageAndText,
    required this.heightBetweenTwoTexts,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Image.asset(AppImages.mosque, height: 150.h, width: 290.w),
            SvgPicture.asset(AppSvgs.islami),
          ],
        ),
        SizedBox(height: 27.h),
        Image.asset(AppImages.onBoarding1, fit: BoxFit.cover),
        SizedBox(height: heightBetweenImageAndText),
        Text(
          AppLocalizations.of(context)!.chooseLanguage,
          style: AppTextStyles.text24GoldBold,
        ),
        SizedBox(height: heightBetweenTwoTexts),
        ChooseLanguageWidget(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/widgets/app_header_widget.dart';

class OnBoardingWidget extends StatelessWidget {
  final double heightBetweenImageAndText;
  final double heightBetweenTwoTexts;
  final Widget theLastWidget;
  final String image;
  final String title;

  const OnBoardingWidget({
    super.key,
    required this.heightBetweenImageAndText,
    required this.heightBetweenTwoTexts,
    required this.theLastWidget,
    required this.image,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const AppHeaderWidget(),
        SizedBox(height: 27.h),
        Image.asset(image, fit: BoxFit.cover),
        SizedBox(height: heightBetweenImageAndText),
        Text(
          title,
          style: AppTextStyles.text24GoldBold,
        ),
        SizedBox(height: heightBetweenTwoTexts),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 48.w),
          child: theLastWidget,
        ),
      ],
    );
  }
}

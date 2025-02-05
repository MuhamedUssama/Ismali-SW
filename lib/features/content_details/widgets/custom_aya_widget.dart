import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

import '../provider/content_screen_provider.dart';

class CustomAyaWidget extends StatelessWidget {
  final String ayaText;
  final int ayaNumber;
  final ContentScreenProvider provider;

  const CustomAyaWidget({
    super.key,
    required this.ayaText,
    required this.ayaNumber,
    required this.provider,
  });

  @override
  Widget build(BuildContext context) {
    bool isTapped = provider.tappedAyaIndex == ayaNumber - 1;
    return Container(
      width: double.infinity,
      padding: EdgeInsetsDirectional.symmetric(vertical: 12.h, horizontal: 8.w),
      margin: EdgeInsetsDirectional.symmetric(vertical: 4.h),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gold),
        borderRadius: BorderRadius.circular(15.r),
        color: isTapped ? AppColors.gold : AppColors.transparent,
      ),
      child: ConstrainedBox(
        constraints: BoxConstraints(minHeight: 60.h),
        child: Center(
          child: Text(
            "[$ayaNumber] $ayaText",
            style: isTapped
                ? AppTextStyles.text20BlackBold
                : AppTextStyles.text20GoldBold,
            textDirection: TextDirection.rtl,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}

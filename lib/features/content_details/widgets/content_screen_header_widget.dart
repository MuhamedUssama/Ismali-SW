import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class ContentScreenHeaderWidget extends StatelessWidget {
  final String title;
  const ContentScreenHeaderWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          AppImages.screenDetailsRightImage,
          width: 92.w,
          height: 92.h,
          fit: BoxFit.cover,
        ),
        Text(title, style: AppTextStyles.text24GoldBold),
        Image.asset(
          AppImages.screenDetailsLeftImage,
          width: 92.w,
          height: 92.h,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}

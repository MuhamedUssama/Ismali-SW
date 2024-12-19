import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

class ZekrWidget extends StatelessWidget {
  final String title;
  final String image;
  const ZekrWidget({super.key, required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 259.h,
      width: 185.w,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        color: AppColors.black,
        border: Border.all(color: AppColors.gold, width: 2),
        borderRadius: BorderRadius.circular(20.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(image),
          Text(title, style: AppTextStyles.text20WhiteBold)
        ],
      ),
    );
  }
}

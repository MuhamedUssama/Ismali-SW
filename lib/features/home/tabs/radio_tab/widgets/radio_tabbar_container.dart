import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

class RadioTabbarContainer extends StatelessWidget {
  final bool isSelected;
  final String title;

  const RadioTabbarContainer({
    super.key,
    required this.isSelected,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      decoration: BoxDecoration(
        color: isSelected ? AppColors.gold : AppColors.black.withOpacity(0.7),
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Center(
        child: Text(
          title,
          style: isSelected
              ? AppTextStyles.text16BlackBold
              : AppTextStyles.text16WhiteBold,
        ),
      ),
    );
  }
}

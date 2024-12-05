import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';

class CustomIconWithBackgroundWidget extends StatelessWidget {
  final Widget icon;
  final bool isSelected;
  const CustomIconWithBackgroundWidget(
      {super.key, required this.icon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.h,
      width: 59.w,
      decoration: BoxDecoration(
        color:
            isSelected ? AppColors.black.withOpacity(0.6) : Colors.transparent,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(66.r),
      ),
      child: icon,
    );
  }
}

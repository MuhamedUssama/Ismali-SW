import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/on_boarding/providers/languages_provider.dart';
import 'package:provider/provider.dart';

class ChooseLanguageWidget extends StatelessWidget {
  const ChooseLanguageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 125.w,
      height: 41.h,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.gold, width: 2),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Consumer<LanguagesProvider>(
        builder: (context, provider, child) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 60.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: provider.isClicked
                      ? AppColors.gold
                      : AppColors.transparent,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.onSwitchLanguage("en");
                  },
                  child: Image.asset(AppIcons.usIcon),
                ),
              ),
              Container(
                width: 60.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: provider.isClicked
                      ? AppColors.transparent
                      : AppColors.gold,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: GestureDetector(
                  onTap: () {
                    provider.onSwitchLanguage("ar");
                  },
                  child: Image.asset(AppIcons.egyptIcon),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

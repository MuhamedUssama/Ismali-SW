import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppLocalizations.of(context)!.bearishDescribtion,
            style: AppTextStyles.text36WhiteBold,
          ),
          SizedBox(height: 16.h),
          Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 40.w),
                child:
                    Image.asset(AppImages.sebhaTail, width: 73.w, height: 86.h),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.h),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      AppImages.sebhaBody,
                      width: 379.w,
                      height: 381.h,
                    ),
                    Column(
                      children: [
                        const Text(
                          "سبحان الله",
                          style: AppTextStyles.text36WhiteBold,
                        ),
                        SizedBox(height: 10.h),
                        const Text(
                          "30",
                          style: AppTextStyles.text36WhiteBold,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

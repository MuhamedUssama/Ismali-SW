import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';

import 'widgets/zekr_widget.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 301.h,
              padding: EdgeInsets.symmetric(vertical: 14.h),
              decoration: BoxDecoration(
                color: AppColors.darkGold,
                borderRadius: BorderRadius.circular(40.r),
                image: const DecorationImage(
                  image: AssetImage(AppImages.timeCard),
                ),
              ),
              child: const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('16 Jul,', style: AppTextStyles.text16WhiteBold),
                          Text('2024', style: AppTextStyles.text16WhiteBold),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Pray Time',
                              style: AppTextStyles.text16BlackBold),
                          Text('Tuesday', style: AppTextStyles.text16BlackBold),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('09 Muh,', style: AppTextStyles.text16WhiteBold),
                          Text('1446', style: AppTextStyles.text16WhiteBold),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Text(
              AppLocalizations.of(context)!.azkar,
              style: AppTextStyles.text16WhiteBold,
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ZekrWidget(
                  title: AppLocalizations.of(context)!.eveningAzkar,
                  image: AppImages.eveningAzkar,
                ),
                ZekrWidget(
                  title: AppLocalizations.of(context)!.morningAzkar,
                  image: AppImages.morningAzkar,
                ),
              ],
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}

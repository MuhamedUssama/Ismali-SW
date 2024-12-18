import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:provider/provider.dart';

import 'provider/sebha_tab_provider.dart';

class SebhaTab extends StatelessWidget {
  const SebhaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SebhaTabProvider(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 16.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
              style: AppTextStyles.text36WhiteBold,
            ),
            SizedBox(height: 16.h),
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 40.w),
                  child: Image.asset(AppImages.sebhaTail,
                      width: 73.w, height: 86.h),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 75.h),
                  child: Consumer<SebhaTabProvider>(
                    builder: (context, provider, child) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          GestureDetector(
                            onTap: provider.onZkrClicked,
                            child: Transform.rotate(
                              angle: provider.angle,
                              child: Image.asset(
                                AppImages.sebhaBody,
                                width: 379.w,
                                height: 381.h,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Text(
                                provider.azkar[provider.index],
                                style: AppTextStyles.text36WhiteBold,
                              ),
                              SizedBox(height: 10.h),
                              Text(
                                provider.counter.toString(),
                                style: AppTextStyles.text36WhiteBold,
                              ),
                            ],
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

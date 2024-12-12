import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_constants.dart';
import 'package:provider/provider.dart';

import 'provider/quran_tab_provider.dart';
import 'widgets/custom_search_widget.dart';
import 'widgets/sura_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuranTabProvider(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Consumer<QuranTabProvider>(
              builder: (context, provider, child) {
                return Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomSearchWidget(provider: provider),
                      SizedBox(height: 20.h),
                      Text(
                        AppLocalizations.of(context)!.quranList,
                        style: AppTextStyles.text16WhiteBold,
                      ),
                      SizedBox(height: 8.h),
                      Expanded(
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return SuraWidget(
                              suraNumber: index + 1,
                              suraTitle: AppConstants.soraNames[index],
                              suraVerses: AppConstants.soraAyatCount[index],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Divider(
                              color: AppColors.white,
                              indent: 42.w,
                              endIndent: 42.w,
                              height: 20.h,
                            );
                          },
                          itemCount: AppConstants.soraAyatCount.length,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/features/home/tabs/quran_tab/provider/quran_tab_provider.dart';

import 'sura_widget.dart';

class QuranListWidget extends StatelessWidget {
  final QuranTabProvider provider;

  const QuranListWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
                  suraTitle: provider.filteredSuraName.isEmpty
                      ? provider.allSuraName[index]
                      : provider.filteredSuraName[index],
                  suraVerses: provider.filteredSuraName.isEmpty
                      ? provider.allAyat[index]
                      : "",
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
              itemCount: provider.filteredSuraName.isEmpty
                  ? provider.allAyat.length
                  : provider.filteredSuraName.length,
            ),
          )
        ],
      ),
    );
  }
}

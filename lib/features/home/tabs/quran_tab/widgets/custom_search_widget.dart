import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/home/tabs/quran_tab/provider/quran_tab_provider.dart';

class CustomSearchWidget extends StatelessWidget {
  final QuranTabProvider provider;
  const CustomSearchWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.gold,
      style: AppTextStyles.text16WhiteBold,
      controller: provider.searchController,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.black.withOpacity(0.7),
        hintText: AppLocalizations.of(context)!.suraName,
        hintStyle: AppTextStyles.text16WhiteBold,
        prefixIcon: const ImageIcon(
          AssetImage(AppIcons.searchIcon),
          color: AppColors.gold,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.gold),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.gold),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.r),
          borderSide: const BorderSide(color: AppColors.gold),
        ),
      ),
    );
  }
}

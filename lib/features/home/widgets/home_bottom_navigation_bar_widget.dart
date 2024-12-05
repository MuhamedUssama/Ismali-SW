import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/home/home_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/features/home/widgets/custom_icon_with_background_widget.dart';

class HomeBottomNavigationBarWidget extends StatelessWidget {
  final HomeProvider provider;

  const HomeBottomNavigationBarWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.gold,
      currentIndex: provider.currentIndex,
      selectedItemColor: AppColors.white,
      unselectedItemColor: AppColors.black,
      selectedLabelStyle: AppTextStyles.text12WhiteBold,
      onTap: provider.onTabClicked,
      items: [
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.quran,
          backgroundColor: AppColors.gold,
          icon: CustomIconWithBackgroundWidget(
            icon: const ImageIcon(AssetImage(AppIcons.quran)),
            isSelected: provider.currentIndex == 0,
          ),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.hadeth,
          backgroundColor: AppColors.gold,
          icon: CustomIconWithBackgroundWidget(
            icon: const ImageIcon(AssetImage(AppIcons.hadeth)),
            isSelected: provider.currentIndex == 1,
          ),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.sebha,
          backgroundColor: AppColors.gold,
          icon: CustomIconWithBackgroundWidget(
            icon: const ImageIcon(AssetImage(AppIcons.sebha)),
            isSelected: provider.currentIndex == 2,
          ),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.radio,
          backgroundColor: AppColors.gold,
          icon: CustomIconWithBackgroundWidget(
            icon: const ImageIcon(AssetImage(AppIcons.radio)),
            isSelected: provider.currentIndex == 3,
          ),
        ),
        BottomNavigationBarItem(
          label: AppLocalizations.of(context)!.time,
          backgroundColor: AppColors.gold,
          icon: CustomIconWithBackgroundWidget(
            icon: const ImageIcon(AssetImage(AppIcons.time)),
            isSelected: provider.currentIndex == 4,
          ),
        ),
      ],
    );
  }
}

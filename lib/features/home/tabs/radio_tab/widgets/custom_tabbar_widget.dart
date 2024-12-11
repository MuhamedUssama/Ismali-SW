import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../provider/radio_tab_provider.dart';
import 'radio_tabbar_container.dart';

class CustomTabbarWidget extends StatelessWidget {
  final RadioTabProvider provider;
  const CustomTabbarWidget({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      dividerHeight: 0,
      dividerColor: AppColors.transparent,
      overlayColor: const WidgetStatePropertyAll<Color>(
        AppColors.transparent,
      ),
      indicator: const BoxDecoration(color: AppColors.transparent),
      onTap: (index) {
        provider.changeTab(index);
      },
      tabs: [
        RadioTabbarContainer(
          isSelected: provider.currectIndex == 0,
          title: AppLocalizations.of(context)!.radio,
        ),
        RadioTabbarContainer(
          isSelected: provider.currectIndex == 1,
          title: AppLocalizations.of(context)!.reciters,
        ),
      ],
    );
  }
}

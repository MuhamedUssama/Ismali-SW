import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class SuraWidget extends StatelessWidget {
  final int suraNumber;
  final String suraTitle;
  final String suraVerses;

  const SuraWidget({
    super.key,
    required this.suraNumber,
    required this.suraTitle,
    required this.suraVerses,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SvgPicture.asset(AppSvgs.ayatShape),
            Text(
              suraNumber.toString(),
              style: AppTextStyles.text20WhiteBold,
            ),
          ],
        ),
        Column(
          children: [
            Text(suraTitle, style: AppTextStyles.text20WhiteBold),
            Text(
              "$suraVerses ${AppLocalizations.of(context)!.verses}",
              style: AppTextStyles.text14WhiteBold,
            )
          ],
        ),
      ],
    );
  }
}

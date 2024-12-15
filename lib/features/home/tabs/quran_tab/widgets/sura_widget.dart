import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/content_details/content_details_screen.dart';
import 'package:islami_app/features/content_details/models/content_screen_model.dart';
import 'package:islami_app/features/content_details/provider/content_screen_provider.dart';
import 'package:islami_app/features/home/tabs/quran_tab/models/quran_model.dart';
import 'package:provider/provider.dart';

class SuraWidget extends StatelessWidget {
  final QuranModel quranModel;

  const SuraWidget({super.key, required this.quranModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return ChangeNotifierProvider(
                create: (context) => ContentScreenProvider(
                  contentScreenModel: ContentScreenModel(
                    titleInArabic: quranModel.titleInArabic,
                    titleInEnglish: quranModel.titleInEnglish,
                    fileName: "${quranModel.id}.txt",
                    isQuran: true,
                  ),
                ),
                child: ContentDetailsScreen(
                  contentScreenModel: ContentScreenModel(
                    titleInArabic: quranModel.titleInArabic,
                    titleInEnglish: quranModel.titleInEnglish,
                    fileName: "${quranModel.id}.txt",
                    isQuran: true,
                  ),
                ),
              );
            },
          ),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  SvgPicture.asset(AppSvgs.ayatShape),
                  Text(
                    quranModel.id.toString(),
                    style: AppTextStyles.text20WhiteBold,
                  ),
                ],
              ),
              SizedBox(width: 24.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(quranModel.titleInEnglish,
                      style: AppTextStyles.text20WhiteBold),
                  Text(
                    "${quranModel.vercesCount} ${AppLocalizations.of(context)!.verses}",
                    style: AppTextStyles.text14WhiteBold,
                  )
                ],
              ),
            ],
          ),
          Text(quranModel.titleInArabic, style: AppTextStyles.text20WhiteBold),
        ],
      ),
    );
  }
}

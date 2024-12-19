import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/home/tabs/radio_tab/models/reciters/reciters_model.dart';
import 'package:islami_app/features/home/tabs/radio_tab/provider/radio_tab_provider.dart';
import 'package:provider/provider.dart';

class CusomReciterItem extends StatelessWidget {
  final Reciters reciter;
  final int index;

  const CusomReciterItem({
    super.key,
    required this.reciter,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    RadioTabProvider provider = Provider.of<RadioTabProvider>(context);

    return Container(
      height: 133.h,
      width: double.infinity,
      margin: EdgeInsetsDirectional.only(bottom: 16.h),
      decoration: BoxDecoration(
        color: AppColors.gold,
        borderRadius: BorderRadius.circular(20.r),
        image: DecorationImage(
          alignment: Alignment.bottomCenter,
          opacity: 0.7,
          image: AssetImage(
            provider.isPlaying(index) ? AppImages.soundWave : AppImages.mosques,
          ),
        ),
      ),
      child: Center(
        child: Text(
          reciter.name ?? "",
          style: AppTextStyles.text20BlackBold,
        ),
      ),
    );
  }
}

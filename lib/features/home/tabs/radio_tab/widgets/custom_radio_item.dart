import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/features/home/tabs/radio_tab/models/radio/radios_model.dart';
import 'package:islami_app/features/home/tabs/radio_tab/provider/radio_tab_provider.dart';
import 'package:provider/provider.dart';

class CustomRadioItem extends StatelessWidget {
  final Radios radio;
  final int index;
  const CustomRadioItem({super.key, required this.radio, required this.index});

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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            radio.name ?? "",
            style: AppTextStyles.text20BlackBold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: AppColors.black,
                  size: 28,
                ),
              ),
              IconButton(
                onPressed: () async {
                  if (provider.isPlaying(index)) {
                    await provider.puaseAudio(index);
                  } else {
                    await provider.playAudio(radio.url!, index);
                  }
                },
                icon: Icon(
                  provider.isPlaying(index)
                      ? Icons.pause_rounded
                      : Icons.play_arrow_rounded,
                  color: AppColors.black,
                  size: 52,
                ),
              ),
              IconButton(
                onPressed: () async {
                  await provider.toggleMute(index);
                },
                icon: Icon(
                  provider.isMute(index)
                      ? Icons.volume_off_rounded
                      : Icons.volume_up_rounded,
                  color: AppColors.black,
                  size: 36,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

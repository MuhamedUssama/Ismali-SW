import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class AppHeaderWidget extends StatelessWidget {
  const AppHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        Image.asset(AppImages.mosque, height: 150.h, width: 290.w),
        SvgPicture.asset(AppSvgs.islami),
      ],
    );
  }
}

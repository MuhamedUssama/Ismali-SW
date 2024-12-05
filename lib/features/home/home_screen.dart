import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/core/utils/app_assets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        decoration: const BoxDecoration(
          color: AppColors.black,
          image: DecorationImage(
            image: AssetImage(AppImages.backGround),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Scaffold(
          backgroundColor: AppColors.transparent,
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 30.h),
              Stack(
                alignment: AlignmentDirectional.bottomCenter,
                children: [
                  Image.asset(AppImages.mosque, height: 150.h, width: 290.w),
                  SvgPicture.asset(AppSvgs.islami),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

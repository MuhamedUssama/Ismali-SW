import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/core/utils/app_assets.dart';
import 'package:islami_app/core/widgets/app_header_widget.dart';
import 'package:islami_app/features/home/home_provider.dart';
import 'package:islami_app/features/home/widgets/home_bottom_navigation_bar_widget.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeProvider provider = Provider.of<HomeProvider>(context);

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
              const AppHeaderWidget(),
              SizedBox(height: 20.h),
              provider.tabs[provider.currentIndex],
            ],
          ),
          bottomNavigationBar:
              HomeBottomNavigationBarWidget(provider: provider),
        ),
      ),
    );
  }
}

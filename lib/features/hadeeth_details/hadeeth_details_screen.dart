import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';
import 'package:provider/provider.dart';

import 'models/hadeeth_details_model.dart';
import 'provider/hadeath_details_provider.dart';
import 'widgets/hadeeth_header_widget.dart';

class HadeethDetailsScreen extends StatelessWidget {
  final HadeethDetailsModel hadeethModel;
  const HadeethDetailsScreen({super.key, required this.hadeethModel});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HadeathDetailsProvider(hadeethModel),
      child: Scaffold(
        appBar: AppBar(title: Text(hadeethModel.titleInEnglish)),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 18.w),
                child: Column(
                  children: [
                    HadeethHeaderWidget(
                      title: hadeethModel.titleInArabic,
                    ),
                    SizedBox(height: 30.h),
                    Consumer<HadeathDetailsProvider>(
                      builder: (context, provider, child) {
                        if (provider.fileContent.isEmpty) {
                          provider.readContent();
                          return const Center(
                            child: CircularProgressIndicator(
                              color: AppColors.gold,
                            ),
                          );
                        } else {
                          return Text(
                            provider.fileContent,
                            style: AppTextStyles.text20GoldBold,
                            textAlign: TextAlign.right,
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

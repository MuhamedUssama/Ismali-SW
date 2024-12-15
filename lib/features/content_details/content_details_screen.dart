import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/features/content_details/models/content_screen_model.dart';
import 'package:islami_app/features/content_details/widgets/custom_aya_widget.dart';
import 'package:provider/provider.dart';
import 'provider/content_screen_provider.dart';
import 'widgets/content_screen_header_widget.dart';

class ContentDetailsScreen extends StatelessWidget {
  final ContentScreenModel contentScreenModel;
  const ContentDetailsScreen({super.key, required this.contentScreenModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contentScreenModel.titleInEnglish),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.w),
              child: Column(
                children: [
                  ContentScreenHeaderWidget(
                    title: contentScreenModel.titleInArabic,
                  ),
                  SizedBox(height: 30.h),
                  Consumer<ContentScreenProvider>(
                    builder: (context, provider, child) {
                      if (provider.fileLines.isEmpty) {
                        provider.readContent();
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.gold,
                          ),
                        );
                      } else {
                        return ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: provider.fileLines.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                provider.onAyaClicked(index);
                              },
                              child: CustomAyaWidget(
                                ayaNumber: index + 1,
                                provider: provider,
                                ayaText: provider.fileLines[index],
                              ),
                            );
                          },
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
    );
  }
}

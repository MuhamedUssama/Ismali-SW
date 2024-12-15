import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/features/content_details/models/content_screen_model.dart';

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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.w),
        child: Column(
          children: [
            ContentScreenHeaderWidget(title: contentScreenModel.titleInArabic),
          ],
        ),
      ),
    );
  }
}

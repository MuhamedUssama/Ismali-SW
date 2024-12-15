import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'provider/quran_tab_provider.dart';
import 'widgets/custom_search_widget.dart';
import 'widgets/quran_list_widget.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => QuranTabProvider(),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            Consumer<QuranTabProvider>(
              builder: (context, provider, child) {
                return Expanded(
                  child: Column(
                    children: [
                      CustomSearchWidget(
                        provider: provider,
                        search: provider.addFilteredSuraNamesToFilteredList,
                      ),
                      SizedBox(height: 20.h),
                      QuranListWidget(provider: provider),
                    ],
                  ),
                );
              },
            ),
            SizedBox(height: 8.h),
          ],
        ),
      ),
    );
  }
}

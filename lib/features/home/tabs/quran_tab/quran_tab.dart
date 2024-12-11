import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'provider/quran_tab_provider.dart';
import 'widgets/custom_search_widget.dart';

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
                return CustomSearchWidget(provider: provider);
              },
            ),
          ],
        ),
      ),
    );
  }
}

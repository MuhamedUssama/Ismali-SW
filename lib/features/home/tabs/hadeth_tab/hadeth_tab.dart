import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/features/hadeeth_details/hadeeth_details_screen.dart';
import 'package:islami_app/features/hadeeth_details/models/hadeeth_details_model.dart';
import 'package:provider/provider.dart';

import 'provider/hadeth_tab_provider.dart';
import 'widgets/hadeth_widget.dart';

class HadethTab extends StatelessWidget {
  const HadethTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HadethTabProvider>(
      create: (context) => HadethTabProvider(),
      child: Consumer<HadethTabProvider>(
        builder: (context, provider, child) {
          return ListView.separated(
            itemBuilder: (context, index) => InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return HadeethDetailsScreen(
                        hadeethModel: HadeethDetailsModel(
                          fileName: 'h${index + 1}.txt',
                          titleInArabic:
                              "الحديث ${provider.ahadethNames[index]}",
                          titleInEnglish: "Hadeeth ${index + 1}",
                        ),
                      );
                    },
                  ),
                );
              },
              child: HadethWidget(
                name: "الحديث ${provider.ahadethNames[index]}",
              ),
            ),
            separatorBuilder: (context, index) {
              return Divider(
                color: AppColors.white,
                indent: 42.w,
                endIndent: 42.w,
                height: 20.h,
              );
            },
            itemCount: provider.ahadethNames.length,
          );
        },
      ),
    );
  }
}

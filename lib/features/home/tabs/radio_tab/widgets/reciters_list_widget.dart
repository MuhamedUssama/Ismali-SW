import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/config/theme/app_colors.dart';
import 'package:islami_app/features/home/tabs/radio_tab/api/radio_api_manager.dart';
import 'package:islami_app/features/home/tabs/radio_tab/models/reciters/reciters_model.dart';
import 'package:islami_app/features/home/tabs/radio_tab/widgets/cusom_reciter_item.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/features/on_boarding/providers/languages_provider.dart';

class RecitersListWidget extends StatelessWidget {
  const RecitersListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var languagesProvider = Provider.of<LanguagesProvider>(context);
    String language = 'ar';
    if (languagesProvider.languageCode == 'en') {
      language = 'eng';
    } else {
      language = 'ar';
    }

    return FutureBuilder(
      future: RadioApiManager.getReciters(language: language),
      builder: (context, snapshot) {
        List<Reciters> reciters = snapshot.data?.reciters ?? [];
        if (snapshot.hasError) {
          return const Center(child: Text("Somthing went worng"));
        } else if (snapshot.hasData) {
          return ListView.builder(
            padding:
                EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 16.h),
            itemCount: reciters.length,
            itemBuilder: (context, index) {
              return CusomReciterItem(
                reciter: reciters[index],
                index: index,
              );
            },
          );
        } else {
          return const Center(
            child: CircularProgressIndicator(color: AppColors.gold),
          );
        }
      },
    );
  }
}

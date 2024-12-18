import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_radio_item.dart';

class RadioListWidgets extends StatelessWidget {
  const RadioListWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsetsDirectional.only(start: 20.w, end: 20.w, top: 16.h),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const CustomRadioItem();
      },
    );
  }
}

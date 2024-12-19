import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

class HadethWidget extends StatelessWidget {
  final String name;
  const HadethWidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(name, style: AppTextStyles.text20WhiteBold),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/config/theme/app_text_styles.dart';

class DescriptionText extends StatelessWidget {
  final String text;
  const DescriptionText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppTextStyles.text20GoldBold,
      textAlign: TextAlign.center,
    );
  }
}

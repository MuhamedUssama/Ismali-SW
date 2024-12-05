import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/on_boarding_provider.dart';
import 'widgets/on_boarding_body.dart';
import 'widgets/on_boarding_bottom_sheet_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    OnBoardingProvider provider = Provider.of<OnBoardingProvider>(context);

    return Scaffold(
      body: OnBoardingBody(provider: provider),
      bottomSheet: OnBoardingBottomSheetWidget(provider: provider),
    );
  }
}

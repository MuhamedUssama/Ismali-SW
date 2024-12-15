import 'package:flutter/material.dart';
import 'package:islami_app/features/content_details/models/content_screen_model.dart';

class ContentDetailsScreen extends StatelessWidget {
  final ContentScreenModel contentScreenModel;
  const ContentDetailsScreen({super.key, required this.contentScreenModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

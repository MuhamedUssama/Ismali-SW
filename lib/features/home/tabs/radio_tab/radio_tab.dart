import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import 'provider/radio_tab_provider.dart';
import 'widgets/custom_tabbar_widget.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RadioTabProvider(),
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            Consumer<RadioTabProvider>(
              builder: (context, provider, child) {
                return CustomTabbarWidget(provider: provider);
              },
            ),
          ],
        ),
      ),
    );
  }
}

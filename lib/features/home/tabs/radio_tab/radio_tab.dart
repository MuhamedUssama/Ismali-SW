import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/radio_tab_provider.dart';
import 'widgets/custom_tabbar_widget.dart';
import 'widgets/radio_list_widgets.dart';

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
                return Column(
                  children: [
                    CustomTabbarWidget(provider: provider),
                  ],
                );
              },
            ),
            const Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  RadioListWidgets(),
                  Center(
                    child: Text("Haai 2"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

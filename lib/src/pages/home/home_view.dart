import 'package:flutter/material.dart';
import 'package:lemons/src/shared/constants/lm_size.dart';

import 'src/components/lm_main_flow.dart';
import 'src/components/lm_menu_section/lm_menu_section.dart';
import 'src/components/lm_right_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    bool isLargeWidth = screenWidth < LMSize.largeWidth;
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const LMVerticalDivider(),
            const LMMenuSection(),
            const LMVerticalDivider(),
            const LMMainFlow(),
            if (isLargeWidth) const LMVerticalDivider(),
            if (isLargeWidth) const LMRigthSection(),
            if (isLargeWidth) const LMVerticalDivider(),
          ],
        ),
      ),
    );
  }
}

class LMVerticalDivider extends StatelessWidget {
  const LMVerticalDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const VerticalDivider(
      thickness: 0.2,
      width: 1,
      color: Colors.white,
    );
  }
}

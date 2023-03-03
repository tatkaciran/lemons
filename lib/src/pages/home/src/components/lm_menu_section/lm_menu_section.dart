import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lemons/src/shared/constants/lm_size.dart';

import 'src/lm_brand_info.dart';

class LMMenuSection extends StatelessWidget {
  final bool isCollapsed;
  const LMMenuSection({
    this.isCollapsed = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: LMSize.smallWidth,
      child: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LMBrandLogo(),
            const LMBrandDescription(),
            const Spacer(),
            LMMenuItem(
              "৹ home",
              icon: CupertinoIcons.home,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Search",
              icon: CupertinoIcons.search,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Explore",
              icon: CupertinoIcons.globe,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Reels",
              icon: Icons.place,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Messages",
              icon: Icons.message_sharp,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Notifications",
              icon: Icons.notifications,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Create",
              icon: Icons.create,
              isCollapsed: isCollapsed,
            ),
            LMMenuItem(
              "Profile",
              icon: Icons.person,
              isCollapsed: isCollapsed,
            ),
            const Spacer(flex: 6),
            LMMenuItem(
              "More",
              icon: Icons.more_horiz,
              isCollapsed: isCollapsed,
            ),
          ],
        ),
      ),
    );
  }
}

class LMBrandLogo extends StatelessWidget {
  final bool isCollapsed;
  const LMBrandLogo({
    this.isCollapsed = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        "🍋",
        style: !isCollapsed
            ? Theme.of(context).textTheme.displayLarge
            : Theme.of(context).textTheme.displaySmall,
      ),
    );
  }
}

class LMBrandDescription extends StatelessWidget {
  const LMBrandDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            LMBrandInfo.descriptionTR,
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          Text(
            LMBrandInfo.nameTR,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }
}

class LMMenuItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isCollapsed;

  const LMMenuItem(
    this.label, {
    this.icon = Icons.construction_rounded,
    this.isCollapsed = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: !isCollapsed
          ? Text(
              label,
              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: const Color.fromARGB(255, 55, 74, 6),
                  ),
            )
          : Icon(
              icon,
              color: const Color.fromARGB(255, 55, 74, 6),
              size: 35,
            ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:lemons/src/shared/constants/lm_size.dart';

class LMRigthSection extends StatelessWidget {
  const LMRigthSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: LMSize.smallWidth,
      child: const Column(children: [
        Text("instagram"),
        Text("Home"),
        Text("Search"),
        Text("Explore"),
        Text("Reels"),
        Text("Messages"),
        Text("Notifications"),
        Text("Create"),
        Text("Profile"),
        Text("More"),
      ]),
    );
  }
}

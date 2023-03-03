import 'package:flutter/material.dart';
import 'package:lemons/src/shared/constants/lm_size.dart';

class LMMainFlow extends StatelessWidget {
  const LMMainFlow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: LMSize.mediumWidth,
      child: ListView.builder(
        itemCount: 100,
        itemBuilder: (BuildContext context, int index) {
          return const LMEntry();
        },
      ),
    );
  }
}

class LMEntry extends StatelessWidget {
  const LMEntry({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: ColoredBox(
        color: Color.fromARGB(255, 214, 168, 51),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Text(
            'Irure labore deserunt do laboris voluptate cillum dolor ipsum eu nisi consectetur. Anim tempor adipisicing ea sunt culpa officia cillum ullamco est consequat nulla.',
          ),
        ),
      ),
    );
  }
}

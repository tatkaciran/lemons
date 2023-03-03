import 'package:flutter/material.dart';
import 'package:lemons/src/pages/home/home_page.dart';

class Lemons extends StatelessWidget {
  const Lemons({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lemons',
      theme: ThemeData.light(useMaterial3: true).copyWith(
          scaffoldBackgroundColor: const Color.fromARGB(255, 230, 191, 161)),
      // scaffoldBackgroundColor: const Color.fromARGB(255, 201, 165, 89)),
      home: Builder(builder: (context) {
        return const HomePage();
      }),
    );
  }
}

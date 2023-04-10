import 'package:flutter/material.dart';

import 'view/home_screen.dart';

class Travels extends StatelessWidget {
  const Travels({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

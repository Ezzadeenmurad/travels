import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travels/view/login_screen.dart';

import 'view/home_screen.dart';

class Travels extends StatelessWidget {
  const Travels({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

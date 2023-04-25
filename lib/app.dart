import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../core/utils/Bindings.dart';

import 'view/home_screen.dart';
import 'view/login_screen.dart';

class Travels extends StatelessWidget {
  const Travels({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomeScreen (),
      initialBinding: MyBindings(),
    );
  }
}

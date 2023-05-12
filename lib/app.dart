
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travels/BusesBus/Splach_screen.dart';


import '../core/utils/Bindings.dart';


import 'widgets/home_layout.dart';

class Travels extends StatelessWidget {
  const Travels({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home:Splachscreen (),
      initialBinding: MyBindings(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custom_dialog/custom_dialog_city.dart';

class ShowCityController extends GetxController {
  var cityFromController = TextEditingController().obs;
  var cityToController = TextEditingController().obs;
  // String? resalt;
  bool isTo = false;
  showCity() async {
    final resalt = await Get.dialog<String>(CityName(),barrierDismissible: false);

    if (isTo) {
      if (resalt != null) {
        cityToController.value.text = resalt.toString();
      } else {
        cityToController.value.text = 'الى مدينة';
      }
    } else {
      if (resalt != null) {
        cityFromController.value.text = resalt.toString();
      } else {
        cityFromController.value.text = 'من مدينة  ';
      }
      
    }
  }
}

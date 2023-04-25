import 'package:get/get.dart';

class CheckBoxController extends GetxController {
  var isVip = false.obs;
  var isEconomicBus = false.obs;
  var isRemember = false.obs;

  isVipCheck(value) {
    isVip.value = value;
  }

  isEconomicBusCheck(value) {
    isEconomicBus.value = value;
  }

  isRememberCheck(value) {
    isRemember.value = value;
  }
}

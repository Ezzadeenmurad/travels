import 'package:get/get.dart';

import '../../controllers/Search_controller.dart';
import '../../controllers/check_box_controller.dart';
import '../../controllers/date_controller.dart';
import '../../controllers/show_city_controller.dart';

class MyBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DatePickerController());
    Get.lazyPut(() => ShowCityController());
    Get.lazyPut(() => SearchController());
    Get.put(CheckBoxController(),permanent: true);
  }
}

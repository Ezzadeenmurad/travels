import 'package:get/get.dart';

class SearchController extends GetxController {
  var items = [].obs;
  var filteredItems = [].obs;

  @override
  void onInit() {
    super.onInit();
    // Initialize the items list with some data
    items.assignAll([
      'تعز',
      'الحديده',
      'صنعاء',
      'عدن',
      'مارب',
      'حضرموت',
      'ذمار',
      'اب',
      'حجه',
      'تعز',
      'الحديده',
      'صنعاء',
      'عدن',
      'مارب',
      'حضرموت',
      'ذمار',
      'اب',
      'حجه',
      'd'
    ]);
    filteredItems.assignAll(items);
  }

  void filter(String query) {
    if (query.isEmpty) {
      filteredItems.assignAll(items);
    } else {
      filteredItems.assignAll(items
          .where((item) => item.toLowerCase().contains(query.toLowerCase())));
    }
  }
}

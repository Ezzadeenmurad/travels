// ignore_for_file: file_names

import 'package:get/get.dart';
import 'package:travels/models/trip_details.dart';
import 'package:travels/widgets/custom_dialog/custom_dialog_city.dart';

import '../data.dart';

class SearchController extends GetxController {
  var items = [].obs;

  var filteredItems = [].obs;

  @override
  void onInit() {
    super.onInit();
    items.value = [
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
    ];
    filteredItems.assignAll(items);
  }

  // List<dataItem> getProducts(
  //     String query, String categoryFilter, double priceFilter) {
  //   var filteredProducts = tripsData
  //       .where((product) =>
  //           product.name.toLowerCase().contains(query.toLowerCase()) &&
  //           (categoryFilter == null || product.category == categoryFilter) &&
  //           (priceFilter == null || product.price <= priceFilter))
  //       .toList();

  //   return filteredProducts;
  // }

  void filter(String query) {
    if (query.isEmpty) {
      filteredItems.assignAll(items);
    } else {
      filteredItems.assignAll(items
          .where((item) => item.toLowerCase().contains(query.toLowerCase())));
    }
  }
}

import 'package:get/get.dart';
import 'package:travels/widgets/custom_dialog/custom_dialog_city.dart';

import '../models/trip_details.dart';
import 'controllers/Search_controller.dart';
import 'core/utils/assets_manger.dart';

class DataBase {
  // final SearchController searchController = Get.find();
  
static  cityName(items) {
    items = [
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
  }
}

final tripsData = [
  Trip(
      transferCompanyName: 'باصات البركة',
      transferCompanyLogo: ImgAssets.alBarakaLogo,
      tripDate: '1-1-2023',
      attendanceTime: 'صباحا 08:30',
      waitingTime: '1:00',
      startingTime: 'صباحا 09:30',
      formCity: 'تعز',
      toCity: 'عدن',
      transportType: 'VIP',
      price: 11),
  Trip(
      transferCompanyName: 'باصات البركة',
      transferCompanyLogo: ImgAssets.alBarakaLogo,
      tripDate: '2-1-2023',
      attendanceTime: 'صباحا 08:30',
      waitingTime: '1:00',
      startingTime: 'صباحا 09:30',
      formCity: 'صنعاء',
      toCity: 'مارب',
      transportType: 'VIP',
      price: 20),
  Trip(
      transferCompanyName: 'باصات البركة',
      transferCompanyLogo: ImgAssets.alBarakaLogo,
      tripDate: '5-1-2023',
      attendanceTime: 'صباحا 08:30',
      waitingTime: '1:00',
      startingTime: 'صباحا 09:30',
      formCity: 'الحديده',
      toCity: 'عدن',
      transportType: 'اقتصادي',
      price: 5),
];

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../controllers/check_box_controller.dart';
import '../controllers/show_city_controller.dart';
import '../data.dart';

import '../widgets/custom_text.dart';
import '../widgets/custom_trips.dart';
import '../controllers/date_controller.dart';

import '../widgets/custom_Container.dart';

import '../widgets/custom_text_form.dart';
import '../widgets/custom_button.dart';
import 'notifications.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DatePickerController dateController = Get.find();
  final ShowCityController showCityControl = Get.find();
  final CheckBoxController checkBoxController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 245, 245),
      body: CustomScrollView(
        physics: const ClampingScrollPhysics(),
        slivers: [
          SliverAppBar(
            floating: true,
            snap: true,
            pinned: true,
            leading: IconButton(
              onPressed: () {
                Get.to(() =>  Notifications());
              },
              icon: const Icon(Icons.notifications),
            ),
            title: const Align(
                alignment: Alignment.centerRight, child: Text('الرئيسية')),
            expandedHeight: 60,
            backgroundColor: Colors.red,
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Column(
              children: [
                Container(
                  color: Colors.red,
                  padding:
                      const EdgeInsets.only(right: 15, left: 15, bottom: 12),
                  child: Column(
                    children: [
                      customContainer(
                        height: 45,
                        containerColor: Colors.white,
                        child: Obx(() => customTextFiled(
                              text: 'من مدينة  ',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                              suffixIcon:
                                  const Icon(Icons.circle, color: Colors.red),
                              readOnly: true,
                              controller:
                                  showCityControl.cityFromController.value,
                              onTap: () {
                                showCityControl.isTo = false;
                                showCityControl.showCity();
                              },
                            )),
                      ),
                      customContainer(
                          height: 45,
                          containerColor: Colors.white,
                          child: Obx(() => customTextFiled(
                                text: 'الى مدينة',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                                suffixIcon: const Icon(
                                  Icons.location_on_outlined,
                                  size: 30,
                                  color: Colors.grey,
                                ),
                                readOnly: true,
                                controller:
                                    showCityControl.cityToController.value,
                                onTap: () {
                                  showCityControl.isTo = true;
                                  showCityControl.showCity();
                                },
                              ))),
                      customContainer(
                        height: 45,
                        containerColor: Colors.white,
                        child: Obx(() => customTextFiled(
                              text: 'تاريخ الرحلة',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.grey,
                              ),
                              suffixIcon: const Icon(
                                Icons.date_range_outlined,
                                color: Colors.grey,
                              ),
                              readOnly: true,
                              controller:
                                  dateController.dateTextController.value,
                              onTap: () {
                                dateController.selectDate(context);
                              },
                            )),
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "باصات اقتصادي",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Obx(
                                  () => Checkbox(
                                    fillColor:
                                        MaterialStateProperty.all(Colors.white),
                                    checkColor: Colors.red,
                                    value:
                                        checkBoxController.isEconomicBus.value,
                                    onChanged: (value) {
                                      checkBoxController
                                          .isEconomicBusCheck(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                const Text(
                                  "vip باصات ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Obx(
                                  () => Checkbox(
                                    fillColor:
                                        MaterialStateProperty.all(Colors.white),
                                    checkColor: Colors.red,
                                    value: checkBoxController.isVip.value,
                                    onChanged: (value) {
                                      checkBoxController.isVipCheck(value);
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      TypeButton.elevatedButton(
                        minimumSize: const Size(double.infinity, 50),
                        onPressed: () {},
                        child: customText18(text: 'بحث '),
                        buttonColor: const Color.fromARGB(255, 255, 91, 96),
                      ),
                    ],
                  ),
                ),
                customContainer(
                  containerColor: Colors.white,
                  margin: const EdgeInsets.only(top: 20, right: 10, left: 10),
                  width: 400,
                  border: Border.all(color: Colors.black, width: 0.5),
                  child: Obx(() => customTextFiled(
                        text: dateController.day.value,
                        textAlign: TextAlign.center,
                        suffixIcon: IconButton(
                          onPressed: () {
                            dateController.isNextDay = false;
                            dateController.showDay();
                          },
                          icon: const Icon(Icons.arrow_forward_ios_outlined,
                              color: Colors.black),
                        ),
                        prefixIcon: IconButton(
                          onPressed: () {
                            dateController.isNextDay = true;
                            dateController.showDay();
                          },
                          icon: const Icon(Icons.arrow_back_ios_new,
                              color: Colors.black),
                        ),
                        readOnly: true,
                        controller: dateController.dayTextController.value,
                      )),
                ),

                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: tripsData
                      .map((tripData) => CustomeTrip(
                          transferCompanyName: tripData.transferCompanyName,
                          transferCompanyLogo: tripData.transferCompanyLogo,
                          tripDate: tripData.tripDate,
                          attendanceTime: tripData.attendanceTime,
                          waitingTime: tripData.waitingTime,
                          startingTime: tripData.startingTime,
                          formCity: tripData.formCity,
                          toCity: tripData.toCity,
                          transportType: tripData.transportType,
                          price: tripData.price))
                      .toList(),
                )
                // ),
              ],
            )
          ])),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../core/utils/app_color.dart';
import '../widgets/custom_Container.dart';

import 'custom_button.dart';

import 'custom_text_form.dart';
import 'custom_text.dart';

class CustomeTrip extends StatelessWidget {
  final String transferCompanyName;
  final String transferCompanyLogo;
  final String tripDate;
  final String attendanceTime;
  final String waitingTime;
  final String startingTime;
  final String formCity;
  final String toCity;
  final String transportType;
  final int price;
  const CustomeTrip(
      {super.key,
      required this.transferCompanyName,
      required this.transferCompanyLogo,
      required this.tripDate,
      required this.attendanceTime,
      required this.waitingTime,
      required this.startingTime,
      required this.formCity,
      required this.toCity,
      required this.transportType,
      required this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        padding: const EdgeInsets.only(bottom: 10, left: 10),
        margin: const EdgeInsets.only(left: 10, right: 10, top: 17),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(214, 214, 214, 1),
              blurRadius: 1,
              offset: Offset(0, 3),
            ),
          ],
          color: Colors.white,
          border: Border(),
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
            flex: 2,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: customContainer(
                        height: 30,
                        width: double.infinity,
                        containerColor: const Color(0xff228519),
                        child: customTextFiled(
                          text: 'مباشر',
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              height: 1),
                          suffixIcon: const Icon(
                            Icons.double_arrow_rounded,
                            color: Colors.white,
                            size: 28,
                          ),
                          readOnly: true,
                          onTap: () {},
                        )),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: customText18(
                              text: transferCompanyName, color: Colors.red),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                            child: customText18(
                                text: tripDate, color: Colors.grey)),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(right: 15, top: 8),
                    child: Image.asset(
                      transferCompanyLogo,
                      height: 50,
                      width: 50,
                      fit: BoxFit.fill,
                    ),
                  )),
                ]),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      customText(
                          text: 'موعد الانطلاق', color: AppColor.hexColor),
                      customTextSize20(
                          text: startingTime, color: AppColor.hexColor),
                      customText18(text: ' الى مدينة', color: Colors.red),
                      customText18(text: toCity, color: AppColor.hexColor),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      customText(
                          text: 'مدة الانتظار بالساعات ',
                          color: AppColor.hexColor),
                      Row(
                        children: [
                          const Expanded(
                            child: Icon(
                              Icons.directions_bus,
                              size: 30,
                              color: Colors.red,
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: customContainer(
                              containerColor: Colors.red,
                              width: 67,
                              height: 30,
                              child: customText18(
                                  text: waitingTime,
                                  color: Colors.white,
                                  height: 1.5),
                            ),
                          ),
                          const Expanded(
                            child: Icon(
                              Icons.directions_bus,
                              size: 30,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      customText(
                          text: 'موعد الحضور ', color: AppColor.hexColor),
                      customTextSize20(
                          text: attendanceTime, color: AppColor.hexColor),
                      customText18(text: ' من مدينة', color: Colors.red),
                      customText18(text: formCity, color: AppColor.hexColor),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                customText(text: '$transportType نوع النقل', color: Colors.red),
                const SizedBox(
                  width: 100,
                ),
                customText(text: 'غير متاح', color: const Color(0xff228519))
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                customTextSize20(text: '$price', color: AppColor.hexColor),
                customTextSize20(
                    text: '  سعر الرحلة', color: AppColor.hexColor),
                const SizedBox(
                  width: 23,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 2,
            child: TypeButton.elevatedButton(
              minimumSize: const Size(250, double.infinity),
              onPressed: () {},
              child: customText18(text: 'بحث '),
              buttonColor: const Color.fromARGB(255, 49, 165, 39),
            ),
          ),
        ]));
  }
}

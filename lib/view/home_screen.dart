import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/date_controller.dart';
import '../widgets/custom_Container.dart';

import '../widgets/custom_dialog/custom_dialog_city.dart';
import '../widgets/custom_text_form.dart';
import '../widgets/custombutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final DatePickerController dateController = Get.put(DatePickerController());
  final TextEditingController _cityFormController = TextEditingController();
  final TextEditingController _cityToController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.red,
              height: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 20, right: 15),
                child: Column(
                  children: [
                    customContainer(
                      containerColor: Colors.white,
                      child: customTextFiled(
                        text: 'من مدينة  ',
                        icon: const Icon(Icons.circle, color: Colors.red),
                        readOnly: true,
                        controller: _cityFormController,
                        onTap: () async {
                          final re = await Get.dialog<String>(CityName());
                          if (re != null) {
                            _cityToController.text = re.toString();
                          } else {
                            _cityFormController.text = 'من مدينة  ';
                          }
                        },
                      ),
                    ),
                    customContainer(
                      containerColor: Colors.white,
                      child: customTextFiled(
                        text: ' الى مدينة',
                        icon: const Icon(Icons.location_on_outlined,
                            color: Colors.black),
                        readOnly: true,
                        controller: _cityToController,
                        onTap: () async {
                          final re = await Get.dialog<String>(CityName());
                          if (re != null) {
                            _cityToController.text = re.toString();
                          } else {
                            _cityToController.text = ' الى مدينة';
                          }
                        },
                      ),
                    ),
                    customContainer(
                      containerColor: Colors.white,
                      child: customTextFiled(
                        text: 'تاريخ الرحلة',
                        icon: const Icon(Icons.calendar_today, color: Colors.black),
                        readOnly: true,
                        controller: dateController.dateTextController,
                        onTap: () {
                          dateController.selectDate(context);
                        },
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "باصات اقتصادي",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        const Text(
                          "vip باصات ",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    customContainer(
                      child: TypeButton.elevatedButton(
                        onPressed: () {},
                        text: 'بحث ',
                        buttonColor: Color(0xffff757a),
                        textColor: Colors.black,
                        textAlign: TextAlign.center,
                      ),
                      height: 50,
                      width: double.infinity,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

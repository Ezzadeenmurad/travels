import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerController extends GetxController {
  var selectedDate = DateTime.now().obs;
  var day = DateFormat('dd/MMMM/yyyy').format(DateTime.now()).obs;
  bool isNextDay = false;
  Rx<TextEditingController> dateTextController = TextEditingController().obs;
  Rx<TextEditingController> dayTextController = TextEditingController().obs;
  void selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate.value,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
      cancelText: 'الغاء',
      confirmText: 'موافق',
      builder: (context, child) => Theme(
        data: ThemeData.light().copyWith(
          colorScheme: const ColorScheme.light(primary: Colors.red),
          textButtonTheme: TextButtonThemeData(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        child: child!,
      ),
    );

    // ignore: unrelated_type_equality_checks
    if (picked != null && picked != selectedDate.runtimeType) {
      selectedDate.value = picked;
    }
    var date = DateFormat('yyyy/MM/dd').format(selectedDate.value);
    if (picked == null) {
      dateTextController.value.text = 'تاريخ الرحلة';
    } else {
      dateTextController.value.text = date;
    }
  }

  showDay() {
    DateTime dateTime = DateFormat('dd/MMMM/yyyy').parse(day.value);
    DateTime? newDay;
    if (isNextDay) {
      newDay = dateTime.add(const Duration(days: 1));
    } else {
      newDay = dateTime.subtract(const Duration(days: 1));
    }
    day.value = DateFormat('dd/MMMM/yyyy').format(newDay);
    dayTextController.value.text = day.value;
  }
}

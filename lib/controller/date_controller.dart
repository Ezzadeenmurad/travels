import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DatePickerController extends GetxController {
  var selectedDate = DateTime.now().obs;
  final TextEditingController dateTextController = TextEditingController();
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
          colorScheme: ColorScheme.light(primary: Colors.red),
        ),
        child: child!,
      ),
    );

    // ignore: unrelated_type_equality_checks
    if (picked != null && picked != selectedDate.runtimeType) {
      selectedDate.value = picked;
    }
    var date = DateFormat('dd/MM/yyyy').format(selectedDate.value);
    dateTextController.text = date;
  }
}

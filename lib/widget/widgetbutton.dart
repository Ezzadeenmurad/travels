import 'package:flutter/material.dart';
import 'package:get/get.dart';

Container buttoncreate(
    {required String text,
    dynamic? page,
    IconData? icon,
    Color? backgroundColor,
    double? sizedbox,
    Color? textcolor}) {
  return Container(
    width: 300,
    height: 50,
    child: ElevatedButton.icon(
      onPressed: () {
        Get.to(page);
      },

      icon: Icon(icon),
      label: Row(
        children: [
          SizedBox(
            width: sizedbox,
          ),
          Text(text,
              style: TextStyle(
                  fontSize: 23, fontWeight: FontWeight.bold, color: textcolor)),
        ],
      ),
      // child: const Text("click Button"),
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        padding: const EdgeInsets.symmetric(horizontal: 10),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 100,
        
        textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

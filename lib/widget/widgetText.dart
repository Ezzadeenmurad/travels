import 'package:flutter/material.dart';

Text textCostum({required String? tex,Color? color}) {
  return Text(tex!,
      style:  TextStyle(
          fontSize: 20, fontWeight: FontWeight.bold, color: color));
}

Text textone({required String text, Color? color}) {
  return Text(text,
      style:  TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: color));
}

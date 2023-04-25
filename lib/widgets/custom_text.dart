import 'package:flutter/material.dart';

Text customText18({required String text, Color? color, double? height}) => Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 17,
        fontWeight: FontWeight.bold,
        height: height,
      ),
      textAlign: TextAlign.center,
    );
Text customTextSize20({required String text, Color? color}) => Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
Text customText({required String text, Color? color}) => Text(
      text,
      style: TextStyle(
        
        color: color,
         fontSize: 13,
        fontWeight: FontWeight.bold,
      ),
    );

import 'package:flutter/material.dart';

class TypeButton {
  static ElevatedButton elevatedButton({
    required dynamic onPressed,
    Color? buttonColor,
    required String text,
    Color? textColor,
    TextAlign? textAlign,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
        textAlign: textAlign,
      ),
    );
  }

  static OutlinedButton outlinedButton({
    required dynamic onPressed,
    Color? buttonColor,
    required String text,
    Color? textColor,
    TextAlign? textAlign,
  }) {
    return OutlinedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: textColor,
          fontSize: 16,
        ),
        textAlign: textAlign,
      ),
    );
  }
}
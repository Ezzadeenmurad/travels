import 'package:flutter/material.dart';

class TypeButton {
  static ElevatedButton elevatedButton({
    required void Function()? onPressed,
    Color? buttonColor,
    Size? minimumSize,
    required Widget child,
    BorderSide side = BorderSide.none,
    Color? textColor,
    TextAlign? textAlign,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: minimumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: side,
        ),
      ),
      onPressed: onPressed,
      child: child,
    );
  }

  static OutlinedButton outlinedButton({
    required void Function()? onPressed,
    Color? buttonColor,
    Size? minimumSize,
    required Widget child,
    BorderSide side = BorderSide.none,
    Color? textColor,
    TextAlign? textAlign,
  }) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: buttonColor,
        minimumSize: minimumSize,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
         
        ),
         side: side,
      ),
      onPressed: onPressed,
      child: child,
    );
  }
}

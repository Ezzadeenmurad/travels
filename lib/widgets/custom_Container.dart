// ignore_for_file: file_names

import 'package:flutter/material.dart';

Container customContainer({
  required Widget child,
  Color? containerColor,
  double? width,
  double? height,
  EdgeInsetsGeometry? margin = const EdgeInsets.only(top: 10),
  BoxBorder? border,
}) =>
    Container(
        decoration: BoxDecoration(
          border: border,
          color: containerColor,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        margin: margin,
        width: width,
        height: height,
        child: child);

import 'package:flutter/material.dart';

Container customContainer({
  required Widget child,
  Color? containerColor,
  double? width,
  double? height,
}) =>
    Container(
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: const BorderRadius.all(Radius.circular(6)),
        ),
        margin: const EdgeInsets.only(top: 10),
        width: width,
        height: height,
        child: child);

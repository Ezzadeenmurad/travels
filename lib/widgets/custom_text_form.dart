import 'package:flutter/material.dart';

Container customTextFieldShadow({
  required String hint,
}) =>
    Container(
      height: 40,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.all(Radius.circular(10)),
        boxShadow: [
          BoxShadow(
            color: Color(0xffdedede),
            spreadRadius: 4,
            blurRadius: 2,
            offset: Offset(0, 3),
          ),
        ],
      ),
      padding: const EdgeInsets.only(top: 16, right: 12),
      child: customTextFiled(
        text: hint,
        style: const TextStyle(fontSize: 18, color: Colors.grey),
      ),
    );

TextFormField customTextFiled(
        {required String text,
        TextStyle? style,
        TextAlign textAlign = TextAlign.end,
        Widget? suffixIcon,
        Widget? prefixIcon,
        void Function()? onTap,
        bool readOnly = false,
        TextEditingController? controller}) =>
    TextFormField(
      style: style,
      readOnly: readOnly,
      controller: controller,
      textAlign: textAlign,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: style,
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
      ),
      onTap: onTap,
    );

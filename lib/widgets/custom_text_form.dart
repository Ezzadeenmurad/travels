import 'package:flutter/material.dart';

Container customTextFieldShadow({
  required String hint,
}) =>
    Container(
      height: 50,
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
        style: const TextStyle(fontSize: 25, color: Colors.grey),
      ),
    );

TextFormField customTextFiled(
        {required text,
        TextStyle? style,
        Icon? icon,
        Function()? onTap,
        bool readOnly = false,
        TextEditingController? controller}) =>
    TextFormField(
      style: style,
      readOnly: readOnly,
      controller: controller,
      textAlign: TextAlign.end,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        suffixIcon: icon,
      ),
      onTap: onTap,
    );

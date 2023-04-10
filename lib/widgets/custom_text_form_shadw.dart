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
      child: TextFormField(
        textAlign: TextAlign.end,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 25, color: Colors.grey),
        ),
      ),
    );

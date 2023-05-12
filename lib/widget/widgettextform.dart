import 'package:flutter/material.dart';

Container textForm() {
  return Container(
    padding: const EdgeInsets.all(10),
    color: Colors.white,
    width: 50,
    child: TextFormField(
      // cursorColor: Colors.green,
      keyboardType: TextInputType.number,
      // maxLength: 1,
      decoration: const InputDecoration(
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.red,
            width: 4,
          ),
        ),
      ),
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    ),
  );
}

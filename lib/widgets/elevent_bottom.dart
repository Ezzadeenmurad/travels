import 'package:flutter/material.dart';

ElevatedButton elevButton({required String tex1, required Color color}) {
  return ElevatedButton(
    onPressed: () {},
    child: Text(
      tex1,
      style: TextStyle(color: Colors.black),
    ),
    style: ElevatedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.symmetric(horizontal: 50),
      // shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
      // elevation: 100,//تمدد الشادو 
      // shadowColor: Colors.red,
      // textStyle:TextStyle(color: Colors.red,) // التحكم باالخط
    
    ),
  );
}

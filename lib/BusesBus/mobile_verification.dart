// import 'dart:js_util';

// ignore_for_file: unnecessary_new, sort_child_properties_last

// import 'package:booking_travel/BusesBus/user_reistration.dart';
// import 'package:booking_travel/widget/widgetbutton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travels/BusesBus/user_reistration.dart';
import 'package:travels/widget/widgetbutton.dart';

import '../widget/widgetText.dart';

class Mobile extends StatelessWidget {
  
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // const SizedBox(
              //   height: 100,
              // ),
              Image.asset('image/veronica-reverse-FqwkraaM-5.dbdda24.png'),
              Container(),
              // const SizedBox(
              //   height: 20,
              // ),
              textone(
                  text: 'التحقق من الجوال', color: const Color.fromARGB(255, 238, 9, 9)),

              // const SizedBox(
              //   height: 20,
              // ),
              Container(
                width: 300,
                height: 50,
                child: TextFormField(
                  //  autocorrect: true,
                  keyboardType: TextInputType.phone,
                  decoration: new InputDecoration(
                    enabled: true,
                    hintText: '00967 XXX XXX XXX',
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red, width: 3)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide:
                            const BorderSide(color: Colors.green, width: 3)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.red, width: 3)),
                  ),
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              buttoncreate(
                  text: 'التحقق',
                  page: const User(),
                  backgroundColor: const Color.fromARGB(255, 240, 21, 21),
                  sizedbox: 80,
                  textcolor: Colors.white),

              const SizedBox(
                height: 10,
              ),
              buttoncreate(
                  text: 'تخطي',
                  // page:,
                  backgroundColor: const Color.fromARGB(255, 247, 245, 243),
                  sizedbox: 80,
                  textcolor: Color.fromARGB(255, 21, 185, 29)),

              //
            ],
          ),
        ],
      ),
    );
  }
}

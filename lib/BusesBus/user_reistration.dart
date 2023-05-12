// import 'dart:js_util';

// ignore_for_file: unnecessary_new, sort_child_properties_last

// import 'package:booking_travel/BusesBus/mobile_verification.dart';
// import 'package:booking_travel/widget/widgetText.dart';
// import 'package:booking_travel/widget/widgetbutton.dart';
// import 'package:booking_travel/widget/widgettextform.dart';
import 'package:flutter/material.dart';
import 'package:travels/BusesBus/mobile_verification.dart';
import 'package:travels/widget/widgetText.dart';
import 'package:travels/widget/widgetbutton.dart';
import 'package:travels/widget/widgettextform.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      backgroundColor: Colors.white,
      // ),
      body: ListView(
        children: [
          Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              Image.asset('image/veronica-reverse-FqwkraaM-5.dbdda24.png'),
              Container(),
              const SizedBox(
                height: 20,
              ),
              textone(
                  text: 'التحقق ', color: const Color.fromARGB(255, 247, 8, 8)),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  children: const [
                    Text('تعديل'),
                    SizedBox(
                      width: 150,
                    ),
                    Text('+96739068587'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 50,
                color: Colors.green,
                child: Row(
                  children: [
                    textForm(),
                    textForm(),
                    textForm(),
                    textForm(),
                    textForm(),
                    textForm(),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 300,
                height: 50,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mobile()));
                      },
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          textCostum(
                              tex: 'اعادة ارسال الرمز', color: Colors.red),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 130,
                    ),
                    const Text('04:53'),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              buttoncreate(
                  text: 'تأكيد',
                  // page: ,
                  backgroundColor: const Color.fromARGB(255, 240, 21, 21),
                  sizedbox: 80,
                  textcolor: Colors.white),
            ],
          ),
        ],
      ),
    );
  }
}

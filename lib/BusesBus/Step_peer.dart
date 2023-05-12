// ignore_for_file: sort_child_properties_last

import 'dart:ffi';
// import 'dart:js';

// import 'package:booking_travel/BusesBus/mobile_verification.dart';
// import 'package:booking_travel/widget/widgetbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:travels/BusesBus/mobile_verification.dart';
import 'package:travels/widget/widgetbutton.dart';
import '../widget/widgetText.dart';

List<Widget> widgets = [
  ...List.generate(
      1,
      (index) => Container(
            height: 400,
            color: const Color.fromARGB(255, 98, 208, 228),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'image/san.png',
                ),
                textone(text: 'بحت',color: Colors.white),
                textCostum(tex: 'نساعدك على البحث ضمن',color: Colors.white),
                textCostum(tex: 'مواعيد حجز عدد كبير من',color: Colors.white),
                textCostum(tex: 'شركات النقل بضغطة زر واحدة',color: Colors.white),
              ],
            ),
          )),
  ...List.generate(
      1,
      (index) => Container(
            height: 400,
            color: const Color.fromARGB(255, 207, 118, 167),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'image/app-desaine.png',
                ),
                textone(text: 'الحجز اونلاين',color: Colors.white),
                textCostum(tex: 'نساعدك على حجز رحلتك بشكل',color: Colors.white),
                textCostum(tex: 'اسرع دون تكبد عناء الذهاب',color: Colors.white),
                textCostum(tex: 'الى محطات النقل',color: Colors.white),
              ],
            ),
          )),
  ...List.generate(
      1,
      (index) => Stack(
            alignment: Alignment.center,
            children: [
              Container(
                // height: 400,
                color: const Color.fromARGB(255, 252, 74, 74),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'image/bus.png',
                    ),
                    textone(text: 'تأكيد حجز',color: Colors.white),
                    textCostum(tex: 'نساعدك على تأكي حجز لدى',color: Colors.white),
                    textCostum(tex: 'شركات النقل بشكل أسهل',color: Colors.white),
                    textCostum(tex: 'وأكبر مرونة',color: Colors.white),
                    Container(),
                    Positioned(
                      bottom: 40,
                      // child: InkWell(
                      //   onTap: () {},
                      child: Column(
                        children: [
                          buttoncreate(
                              text: 'انشاء حساب جديدالأن',
                              page: const Mobile(),
                              icon: Icons.add,
                              backgroundColor: const Color.fromARGB(255, 245, 20, 4),
                              sizedbox: 20,textcolor:Colors.white ),
                              
                        ],
                      ),
                    ),
                    // ),
                  ],
                ),
              ),
            ],
          )),
];

class Widget198 extends StatefulWidget {
  const Widget198({Key? key}) : super(key: key);
  @override
  State<Widget198> createState() => _Widget198State();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [],
    );
  }
}

class _Widget198State extends State<Widget198>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;
  @override
  void initState() {
    //   TODO: implement initState
    super.initState();
    controller = TabController(
      length: widgets.length,
      initialIndex: _index,
      vsync: this,
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 20, 20),
      floatingActionButton: ButtonBar(
        children: [
          FloatingActionButton.small(
            onPressed: () {
              (_index != widgets.length - 1) ? _index++ : _index = 3;

              controller.animateTo(_index);
            },

            child: const Icon(Icons.navigate_before),
            // ),
            hoverElevation: 0,
            elevation: 0,
          )
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(
            controller: controller,
            children: widgets,
          ),
          Container(),
          Positioned(
            bottom: 40,
            child: TabPageSelector(
              controller: controller,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class NewTraveler extends StatelessWidget {
  List<String> itemslist =['الجنس','ذكر','انثى'];
   NewTraveler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar :NavigationBar(
        height: 60,
        destinations: [
          NavigationDestination(icon: Icon(Icons.settings),
              selectedIcon: Icon(Icons.settings),
              label: 'الاعدادات'),
          NavigationDestination(icon: Icon(Icons.attachment_outlined),
              selectedIcon: Icon(Icons.attachment),
              label: 'حجوزاتي'),
          NavigationDestination(icon: Icon(Icons.card_travel_outlined),
              selectedIcon: Icon(Icons.card_travel_rounded),
              label: 'المسافرين'),
          NavigationDestination(icon: Icon(Icons.home_filled),
              selectedIcon: Icon(Icons.card_travel_rounded),
              label: 'الرئيسية')
        ],

      ),
      appBar: AppBar(


        backgroundColor: Colors.redAccent,


        leading:IconButton(onPressed: (){
          Get.back();

        },
          icon: Icon(Icons.exit_to_app),
        ),


        title:


        Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                "اضافة مسافر جديد"
                ,

              ),


            ],
          ),
        ),


      ),
      body:

      ListView(
        children: [Stack(
          children: [

         Container(
           color: Colors.white38,
            height: 400,
            margin: EdgeInsets.only(top: 10,bottom: 20),


            child:
            Column(

              mainAxisSize: MainAxisSize.min,
              children: [

                TextFormField(

                  style: TextStyle(

                  ),
                  decoration: InputDecoration(
                      labelText: ' الاسم الكامل',

                      border: OutlineInputBorder()

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  style: TextStyle(

                  ),
                  decoration: InputDecoration(
                      labelText: 'تاريخ الميلاد ',

                      border: OutlineInputBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.zero)

                      )

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(

                  style: TextStyle(

                  ),
                  decoration: InputDecoration(
                      labelText: ' رقم الجواز ',

                      border: OutlineInputBorder()

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(

                  style: TextStyle(

                  ),
                  decoration: InputDecoration(
                      labelText: '  رقم الجوال',

                      border: OutlineInputBorder()

                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      height: 10,
                      width: 150,
                    ),




                    MaterialButton(onPressed: (){},
                      child: Text(' اضافة مسافر جديد'),
                      color: Colors.blue,
                      textColor: Colors.white

                      ,

                    )
                  ],
                ),







              ],




            ),
          ),
    ],
        ),


        ],


      ),









    );

  }
}

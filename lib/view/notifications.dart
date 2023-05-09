
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mybook();
  }
}
class mybook extends State<Notifications> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red, //لون خلفية الapar
        ///////////////////////////
        leading:
        IconButton(onPressed: () {
          Get.to(Notifications());
        },
          icon: Icon(Icons.notifications),
        ),
        title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              MediaQuery(data: MediaQuery.of(context).copyWith(
          textScaleFactor: 1.5
        ),
            child:

              Text('الإشعارات',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Cairo',
                    fontWeight: FontWeight.bold,
                ),
              ),
              ),
            ]
        ),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
            onPressed: (){
              Get.back();
            },
            icon: Icon(Icons.home),
            label: Text('home'),
          ),

        ],
      ),
    );
  }
}
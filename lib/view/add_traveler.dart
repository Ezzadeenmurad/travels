
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

//import '../widgets/custom_bottom.dart';
import 'notifications.dart';

class NewTravel extends StatelessWidget{
  const NewTravel({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
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

            Text('إضافة مسافر جديد',
              style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
              ),
            ),
            ),
          ],
        ),
      ),
      body: Column(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              TextField(
                //  textAlign: TextAlign.right,
                decoration:
                InputDecoration(
                  suffixIcon: Icon(Icons.clear),


                  labelText: 'full name',
                ),
              ),
              TextField(
                decoration:
                InputDecoration(
                  suffixIcon: Icon(Icons.clear),

                  labelText: 'Address',
                ),
              ),
              TextField(
                decoration:
                InputDecoration(
                    suffixIcon: Icon(Icons.clear),
                    labelText: 'Phone number'

                ),
                inputFormatters: [
                  FilteringTextInputFormatter.digitsOnly,

                ],

                keyboardType: TextInputType.phone,
              ),
              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: (){
                  //   Get.back();
                  // Get.to(MyHomeApp());

                },
                child: Text('Save'),
              ),





              ElevatedButton(
                  onPressed: (){
                    Get.back();
                    // Get.to(MyHomeApp());

                  },
                  child: Text('back'))
            ],
          ),
        ],
      ),

    );

  }

}




import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  bool? a=false;
  bool? b=false;
  bool ? c=false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        leading:IconButton(onPressed: (){
     

        },
          icon: Icon(Icons.notification_important_rounded),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(''
                'حدد المسافرين'),
          ],
        ),

      ),
      body: Column(
        children: [
          Row(

            mainAxisAlignment: MainAxisAlignment.end,
            children: [


              Text('انس عبدالله عبده مقبل(مسافر رئيسي)'
              )
              ,

              Checkbox(value: a, onChanged: (valu){
                setState(() {
                  a= valu;
                });
              }),
              SizedBox(
                height: 50,
              ),


            ],


          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,


            children: [

              Text('حجز رحلة لمسافرين تابعين'),

              Checkbox(value: b, onChanged:(val){

                setState(() {
                  b=val;

                });
              }),
              SizedBox(
                height: 50,
              ),

            ],
          ),
          Row( mainAxisAlignment: MainAxisAlignment.end,
            children: [

              Text('حجز رحلة لمسافر جديد'),

              Checkbox(value: c, onChanged: (val){
                setState(() {
                  c =val;
                });
              }),
              SizedBox(
                height: 50,
              ),
            ],
          ),
          Row(
            children:[ MaterialButton(
              onPressed: ( ){},
              child: Text('الفاء'),
              color: Colors.red,
              textColor: Colors.white,

            ),
              SizedBox(
                width: 200,
              ),
              MaterialButton(onPressed: (){},
                child: Text(' التالي'),
                color: Colors.blue,
                textColor: Colors.white

                ,

              )


],
          ),


        ],

      ),

    );
  }
}

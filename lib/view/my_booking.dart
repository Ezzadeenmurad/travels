
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


import 'notifications.dart';

class My_booking extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return mybook();
  }
}
class mybook extends State<My_booking>{



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,//لون خلفية الapar
          ///////////////////////////
          leading:
          IconButton(onPressed: () {
            Get.to(Notifications());
          },
            icon: Icon(Icons.notifications),
          ),
          title:Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
          MediaQuery(data: MediaQuery.of(context).copyWith(
              textScaleFactor: 1.5
          ),
               child:
                Text('حجوزاتي',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                  ),
                ),
          ),
              ]
          )
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Expanded(


                child: Column(
                  children:[


                    Padding(
                      padding: EdgeInsets.all(20),
                      child:
                      ElevatedButton(

                        onPressed: (){},
                        child:
                        MediaQuery(data: MediaQuery.of(context).copyWith(
                            textScaleFactor: 1.3
                        ),
                        child:
                        Text('الحجوزات السابقة',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cairo',
                              fontWeight: FontWeight.bold,
                          ),
                        ),
                        ),
                        style: ButtonStyle(
                          minimumSize: MaterialStateProperty.all(Size(350, 55),
                          ),
                          backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                    ),
                    ),
                  SizedBox(height: 20,),
                  /*Text('الحجوزات السابقة',
                    style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Cairo',
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                  ),
                  ),*/
                  SizedBox(height: 20,),
                /*  Expanded(
                      child: ListView.builder(
                          itemCount: preBoking.length,
                          itemBuilder: (BuildContext context,int index){
                            return ListTile(
                              title: Text(preBoking[index]),
                              onTap: (){
                                setState(() {
                                  selectBokings=preBoking;
                                });
                              },
                            );

                          }

                      ),
                  ),*/


                ],
              ),
          ),

          Expanded(
            child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.all(20),
              child:
              ElevatedButton(

                onPressed: (){},
                child:
                    MediaQuery(data: MediaQuery.of(context).copyWith(
                    textScaleFactor: 1.3
                    ),
                    child:
                    Text('الحجوزات الحالية',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Cairo',
                      fontWeight: FontWeight.bold,
                  ),
                ),
    ),
              style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(350, 55),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.red)
              ),
              ),
                ),
            SizedBox(height: 20,),
           /* Text('الحجوزات الحالية',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Cairo',
                  fontWeight: FontWeight.bold,
                  fontSize: 20

            ),
            ),*/
              ElevatedButton.icon(
                  onPressed: (){
                    Get.back();
                  },
                  icon: Icon(Icons.home),
                label: Text('home'),
              ),
            SizedBox(height: 20,),
           /* Expanded(
            child: ListView.builder(
            itemCount: currBoking.length,
            itemBuilder: (BuildContext context,int index){
            return ListTile(
            title: Text(currBoking[index]),
            onTap: (){
              setState(() {
              selectBokings=currBoking;
              });
              },
              );

          }

          ),
          ),*/


    ],
    ),
    ),
    ],



    ),




    );
  }
}




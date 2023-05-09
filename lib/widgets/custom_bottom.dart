
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

CurvedNavigationBar curvedNavigationBar()=> CurvedNavigationBar(


        backgroundColor:Colors.white ,
        color: Colors.red,

        height: 50,
        items: [

          Icon(Icons.more_horiz),
          Icon(Icons.receipt_outlined,),
          Icon(Icons.wallet_travel),
          Icon(Icons.home),


        ],
        //onTap لللرؤية المستقبلية
        //
      );
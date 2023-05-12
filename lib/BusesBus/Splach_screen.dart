import 'dart:async';
import 'Step_peer.dart';
import 'package:flutter/material.dart';

class Splachscreen extends StatelessWidget {
  // final String text;

  // final VoidCallback onClicked;

  const Splachscreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
   
    // );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);
           
  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();

  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   
   Timer(
         const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: ( context) => const Widget198()),),);
  }
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 211, 20, 20),
     
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
         // CircularProgressIndicator(  backgroundColor: Colors.pink[300],),

          Center(
            child: Image.asset(
              'image/white-logo.bf82db8.png',
            ),
          ),
          
        ],
      ),
    );
  }
}

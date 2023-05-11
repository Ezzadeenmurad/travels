import 'package:flutter/material.dart';

import 'package:travels/view/add_traveler.dart';
import 'package:travels/view/home_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int currentIndex = 0;
  List<Widget> screens = [
    const NewTravel(),
    const HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        backgroundColor: Colors.white,
        currentIndex: currentIndex,
        items: const [
          // BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.wallet_travel), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
    );
  }
}

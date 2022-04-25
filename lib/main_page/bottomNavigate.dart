import 'package:flutter/material.dart';

import 'package:pbm_b1/main_page/camera.dart';
// import 'package:pbm_b1/main_page/profile.dart';
// import 'package:pbm_b1/main_page/dashboard.dart';
import 'package:pbm_b1/main_page/history.dart';
import 'package:pbm_b1/main_page/cart.dart';
// import 'package:pbm_b1/main_page/profile.dart';

class BottomNavigate extends StatefulWidget {
  const BottomNavigate({Key? key}) : super(key: key);

  @override
  State<BottomNavigate> createState() => _BottomNavigateState();
}

class _BottomNavigateState extends State<BottomNavigate> {
  int currentIndex = 0;
  // ngambil btn
  final screens = [
    // Dashboard(),
    History(),
    Cart(),
    // Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) => setState(() => currentIndex = index),
          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/home.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'home',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/My order.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'History',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/cart.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'Cart',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/icons/profile.png',
                height: 30.0,
                width: 30.0,
              ),
              label: 'Profile',
              backgroundColor: Color.fromRGBO(225, 208, 91, 1),
            ),
          ]),
    );
  }
}

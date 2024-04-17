import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:fixit/components/constants.dart';
import 'package:fixit/views/call_center_screen.dart';
import 'package:flutter/material.dart';

import '../views/home_screen.dart';
import '../views/order_screen.dart';
import '../views/services_screen.dart';
import '../views/setting_screen.dart';

class CurvedNavBar extends StatefulWidget {
  const CurvedNavBar({super.key});

  @override
  State<CurvedNavBar> createState() => _CurvedNavBarState();
}

class _CurvedNavBarState extends State<CurvedNavBar> {
  int index = 0;
  final List<Widget> _tabItems = [
    const HomeScreen(),
    const ServicesScreen(),
    const CallCenterScreen(),
    const OrderScreen(),
    const SettingScreen()
  ];
  int _activePage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: const Color(0x00000000),
        color: kPrimaryColor,
        buttonBackgroundColor: kPrimaryColor,
        height: 70,
        items: const [
          CurvedNavigationBarItem(
            label: 'home',
            labelStyle: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            child: Icon(
              color: Colors.white,
              Icons.home,
              size: 30,
            ),
          ),
          CurvedNavigationBarItem(
            label: 'services',
            labelStyle: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            child: Image(
              height: 30,
              image: AssetImage(
                'assets/icons/services.png',
              ),
            ),
          ),
          CurvedNavigationBarItem(
            label: 'call center',
            labelStyle: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            child: Image(
              height: 35,
              image: AssetImage('assets/icons/call_center.png'),
            ),
          ),
          CurvedNavigationBarItem(
            label: 'order',
            labelStyle: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            child: Image(
              height: 30,
              image: AssetImage(
                'assets/icons/order.png',
              ),
            ),
          ),
          CurvedNavigationBarItem(
            label: 'setting',
            labelStyle: TextStyle(
              fontSize: 11,
              color: Colors.white,
            ),
            child: Icon(
              size: 30,
              Icons.settings,
              color: Colors.white,
            ),
          ),
        ],
        onTap: (index) {
          setState(
            () {
              _activePage = index;
            },
          );
        },
        letIndexChange: (index) => true,
      ),
      body: _tabItems[_activePage],
    );
  }
}

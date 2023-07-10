// import 'package:bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:uber/account.dart';
import 'package:uber/activity.dart';
import 'package:uber/services.dart';
import 'package:uber/ubsacreen4.dart';

class BottomNav extends StatefulWidget {

  BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  var _currentindex = 0;
  List<Widget> widgetList = const [
    UbSc4(),
    UbServices(),
    UbActivity(),
    UbAccount(),
  ];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
            child: widgetList[_currentindex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        selectedItemColor: Colors.black,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.grid_on,
            ),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_activity,
            ),
            label: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Account',
          )
        ],
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:with_heart/screens/about_screen.dart';
import 'file:///C:/Users/Sree%20Harish/AndroidStudioProjects/with_heart/lib/screens/cart_screens.dart';
import 'package:with_heart/screens/displayScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 1;
  final List<Widget> _children = [
    CartScreen(),
    DisplayScreen(),
    AboutScreen(),
  ];
  @override
  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.blue,

        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined,),
            label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined,),
            label: '',),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline,),
            label: '',),
        ],
      ),
    );
  }
}
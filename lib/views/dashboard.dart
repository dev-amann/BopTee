import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

import 'home.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    Text(
      'Orders',
      style: optionStyle,
    ),
    Text(
      'Cart',
      style: optionStyle,
    ),
    Text(
      'Wallet',
      style: optionStyle,
    ),
    Text(
      'More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: SalomonBottomBar(
        items: <SalomonBottomBarItem>[
          /// Home
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/home.png',
              height: 20.0,
              width: 20.0,
            ),
            title: const Text(
              "Home",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: const Color(0xFF737EC4),
          ),

          /// Orders
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/order.png',
              height: 20.0,
              width: 20.0,
            ),
            title: const Text(
              "Orders",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: const Color(0xFF737EC4),
          ),

          /// Cart
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/cart.png',
              height: 20.0,
              width: 20.0,
            ),
            title: const Text(
              "Cart",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: const Color(0xFF737EC4),
          ),

          /// Wallet
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/wallet.png',
              height: 20.0,
              width: 20.0,
            ),
            title: const Text(
              "Wallet",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: const Color(0xFF737EC4),
          ),

          /// More
          SalomonBottomBarItem(
            icon: Image.asset(
              'assets/icons/more.png',
              height: 20.0,
              width: 20.0,
            ),
            title: const Text(
              "More",
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            selectedColor: const Color(0xFF737EC4),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.teal,
        onTap: _onItemTapped,
      ),
    );
  }
}

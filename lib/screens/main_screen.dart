import 'package:flutter/material.dart';
import 'package:momen_store/screens/bn_screens/cart_screen.dart';
import 'package:momen_store/screens/bn_screens/home_screen.dart';
import 'package:momen_store/screens/bn_screens/settings.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentSelectedIndex = 0;

  final List _screens = [
    const HomeScreen(),
    const CartScreen(),
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentSelectedIndex,
        onTap: (int selectedItem){
          setState(() {
            _currentSelectedIndex = selectedItem;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",
          activeIcon: Icon(Icons.home_outlined)),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.shopping_cart_outlined),
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings_outlined),
              icon: Icon(Icons.settings), label: "Settings"),
        ],
      ),
      body: _screens.elementAt(_currentSelectedIndex),
    );
  }
}

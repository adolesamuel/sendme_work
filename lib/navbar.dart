import 'package:flutter/material.dart';
import 'package:sendme_work/home/home_page.dart';
import 'package:sendme_work/super_card/super_card_page.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List pages = const [
    HomePage(),
    SuperCardPage(),
  ];

  Widget navIcon(String navigationAsset) {
    return ImageIcon(
      AssetImage('assets/navigation/$navigationAsset'),
    );
  }

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) {
          if (value < pages.length) {
            setState(() {
              index = value;
            });
          }
        },
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: const IconThemeData(color: Colors.black),
        unselectedIconTheme: IconThemeData(color: Colors.grey.shade400),
        items: [
          BottomNavigationBarItem(icon: navIcon('home.png'), label: 'Home'),
          BottomNavigationBarItem(icon: navIcon('card.png'), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: navIcon('scanner.png'), label: 'Wallet'),
          BottomNavigationBarItem(icon: navIcon('switch.png'), label: 'Wallet'),
          BottomNavigationBarItem(
              icon: navIcon('settings.png'), label: 'Wallet'),
        ],
      ),
    );
  }
}

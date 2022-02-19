import 'package:flutter/material.dart';
import 'package:sendme_work/home/home_page.dart';
import 'package:sendme_work/intro_screen/onboarding.dart';
import 'package:sendme_work/navbar.dart';
import 'package:sendme_work/super_card/super_card_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/onboarding',
      routes: {
        '/': (context) => const NavBar(),
        '/onboarding': (context) => const OnBoardingPage(),
        '/super_card': (context) => const SuperCardPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}

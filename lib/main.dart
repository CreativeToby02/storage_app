import 'package:flutter/material.dart';
import 'package:storage_app/home_screen.dart';
import 'package:storage_app/statistics_screen.dart';
import 'onboardscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black,
        fontFamily: 'Sanchez',
      ),
      initialRoute: 'First',
      routes: {
        'First': (context) => const OnBoardPage(),
        'Second': (context) => const HomeScreen(),
        'Third': (context) => const StatisticsScreen(),
      },
    );
  }
}

import 'package:flutter/material.dart';
import 'package:islami_c13_monday/core/class/color.dart';
import 'package:islami_c13_monday/home/home.dart';
import 'package:islami_c13_monday/onBoading_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  color: AppColor.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400))),
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingScreen.routeName,
      routes: {
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
      },
    );
  }
}

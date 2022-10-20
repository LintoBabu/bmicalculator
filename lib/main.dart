import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bmicalculator/screens/homeScreens.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main(){
  runApp(const calculator());
}
class calculator extends StatelessWidget {
  const calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "BMI CALCULATOR",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedSplashScreen(duration: 3000,
          splash: Icons.calculate,
          nextScreen: homeScreen(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.blue));
  }
}


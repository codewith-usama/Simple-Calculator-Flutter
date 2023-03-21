import 'package:flutter/material.dart';
import 'package:calculator/simple_calculator.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';

void main() => runApp(const Calculator());

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calculator",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        splash: const Icon(
          Icons.calculate,
          size: 100.0,
          color: Colors.black54,
        ),
        splashTransition: SplashTransition.scaleTransition,
        nextScreen: const SimpleCalculator(),
      ),
    );
  }
}

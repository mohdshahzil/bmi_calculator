import 'dart:async';

import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 9200), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: SizedBox(
            width: 300.0,
            child: DefaultTextStyle(
              style: const TextStyle(
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              child: Center(
                child: AnimatedTextKit(
                  animatedTexts: [
                    FadeAnimatedText('BMI Calculator'),
                    FadeAnimatedText('Stay Fit'),
                    FadeAnimatedText('Stay Healthy'),
                  ],
                  isRepeatingAnimation: false,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

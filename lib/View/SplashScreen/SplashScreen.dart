import 'dart:async';

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import '../../Widgets/spinningImage.dart';
import 'OnBoardingScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routename = '/';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    wait5MinAndNavigate();
  }

  void wait5MinAndNavigate() async {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, StartScreen.routename);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'Assets/Splash.jpeg',
          fit: BoxFit.cover,
        ),
        // Overlay with opacity
        Container(
          color: Colors.black.withOpacity(0.5), // Adjust the opacity as needed
        ),

        Center(
            child: Image.asset(
          'Assets/Logo.png',
          width: 60.w,
        )),
        Positioned(top: 70.h, left: 40.w, child: MySpinningImage()),
      ],
    );
  }
}

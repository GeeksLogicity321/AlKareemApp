import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sizer/sizer.dart';

import '../../Widgets/spinningImage.dart';
import '../BottomNavigationBar.dart';
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
    checkTokenAndNavigate(context);
    // wait5MinAndNavigate();
  }

  void checkTokenAndNavigate(BuildContext context) async {
    final prefs = await SharedPreferences.getInstance();

    bool authToken = prefs.containsKey('auth_token');
    if (authToken) {
      await Future.delayed(Duration(seconds: 3));
      Navigator.pushReplacementNamed(
          context, BottomNavigationBarWidget.routename);
    } else {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushReplacementNamed(context, StartScreen.routename);
    }
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

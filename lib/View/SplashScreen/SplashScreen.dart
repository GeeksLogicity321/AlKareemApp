import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';
import 'package:realestate/ViewModel/UserPaymentProvider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:sizer/sizer.dart';

import '../../ViewModel/PenaltyProvider.dart';
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
      try {
        await context.read<LoginProvider>().getUser(context);
        context.read<UserPaymentProvider>().setSeclected(
            context, context.read<LoginProvider>().userObject.data!.sId!);
            context.read<UserPenaltyProvider>().setSeclected(
            context, context.read<LoginProvider>().userObject.data!.sId!);
        Navigator.pushReplacementNamed(
            context, BottomNavigationBarWidget.routename);
      } catch (e) {
        Navigator.pushReplacementNamed(context, StartScreen.routename);
        errorSnackbar(context, e.toString());
      }
      // context.read<LoginProvider>().getUser(context);
      // await Future.delayed(Duration(seconds: 3));
    } else {
      await Future.delayed(Duration(seconds: 5));
      Navigator.pushReplacementNamed(context, StartScreen.routename);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'Assets/Splash.jpeg',
            fit: BoxFit.cover,
          ),
          // Overlay with opacity
          Container(
            color:
                Colors.black.withOpacity(0.5), // Adjust the opacity as needed
          ),

          Center(
              child: Image.asset(
            'Assets/Logo.png',
            width: 60.w,
          )),
          Positioned(top: 70.h, left: 40.w, child: MySpinningImage()),
        ],
      ),
    );
  }
}

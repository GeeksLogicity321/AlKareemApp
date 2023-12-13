import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/View/BottomNavigationBar.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../View/SplashScreen/OnBoardingScreen.dart';

void checkTokenAndNavigate(BuildContext context) async {
  bool authToken = await checkAuthToken();
  if (authToken) {
    await Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacementNamed(
        context, BottomNavigationBarWidget.routename);
  } else {
    await Future.delayed(Duration(seconds: 5));
    Navigator.pushReplacementNamed(context, StartScreen.routename);
  }
}

void SetAuthTocken(String authtocken) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('auth_token', authtocken);
}

Future<bool> checkAuthToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  return prefs.containsKey('auth_token');
}

void deleteAuthTocken(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    await prefs.remove('auth_token');
    successSnackbar(context, 'Logged out Successfully');
  } catch (e) {
    errorSnackbar(context, 'Error Could not Logout');
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../View/BottomNavigationBar.dart';
import '../View/LoginScreen.dart';
import '../ViewModel/BottomnavProvider.dart';
import './SnackBars.dart';

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

void setAuthTocken(String authtocken, String userid) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('auth_token', authtocken);
  await prefs.setString('userId', userid);
}

void setFmcTocken(String token) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('fmc_token', token);
}

Future<String?> loadFmcToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('fmc_token');
}

Future<bool> checkAuthToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.containsKey('auth_token');
}

Future<String?> loadUserId() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('userId');
}

Future<String?> loadTocken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString('auth_token');
}

void deleteAuthTocken(BuildContext context) async {
  successSnackbar(context, 'Logged out Successfully');
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    await prefs.remove('auth_token');
    deleteFcmTocken(context);
    Navigator.of(context, rootNavigator: true).pushAndRemoveUntil(
      MaterialPageRoute(builder: (context) => LoginScreen()),
      (Route<dynamic> route) => false,
    );
    context.read<TabControllerProvider>().changeTab(0);
  } catch (e) {
    errorSnackbar(context, 'Error Could not Logout');
  }
}

void deleteFcmTocken(BuildContext context) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  try {
    await prefs.remove('auth_token');
  } catch (e) {
    errorSnackbar(context, 'Error Could not Delet FCM Token');
  }
}

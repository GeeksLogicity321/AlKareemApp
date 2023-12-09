import 'package:flutter/material.dart';

import 'View/BottomNavigationBar.dart';
import 'View/LoginScreen.dart';
import 'View/ProfileScreen/AccountScreen.dart';
import 'View/ProfileScreen/CustomerService.dart';
import 'View/ProfileScreen/HelpCenter.dart';
import 'View/ProfileScreen/NotificationScreen.dart';
import 'View/ProfileScreen/PaymentsScreen.dart';
import 'View/ProfileScreen/SecurityScreen.dart';
import 'View/PropertyDetailScreen.dart';
import 'View/SplashScreen/OnBoardingScreen.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'View/SplashScreen/OnBoardingScreen2.dart';

Map<String, WidgetBuilder> namedRoutes = {
  '/': (context) => const SplashScreen(),
  StartScreen.routename: (context) =>  StartScreen(),
  OnboardingScreen.routename: (context) => OnboardingScreen(),
  LoginScreen.routename: (context) => LoginScreen(),
  BottomNavigationBarWidget.routename: (context) => BottomNavigationBarWidget(),
  AccountScreen.routename: (context) => AccountScreen(),
  PaymentssScreen.routename: (context) => PaymentssScreen(),
  NotificationScreen.routename: (context) =>  NotificationScreen(),
  SecurityScreen.routename: (context) =>  SecurityScreen(),
  HelpcenterScreen.routename: (context) =>  HelpcenterScreen(),
  CustomerServiceScreen.routename: (context) =>  CustomerServiceScreen(),
  PropertyDetailScreen.routename: (context) =>  PropertyDetailScreen(),
  
};

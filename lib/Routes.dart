import 'package:flutter/material.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/AlkareemFacilitiesScreen/AlKareenFacilitiesScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/ComplaintsScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/FormsScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/GalleryScreen.dart';
import 'package:realestate/View/FeaturedWeidgetScreen/WaterBillScreen.dart';
import 'View/OTP_Screen.dart';
import 'View/BottomNavigationBar.dart';
import 'View/LoginScreen.dart';
import 'View/ProfileScreen/AccountScreen.dart';
import 'View/ProfileScreen/CustomerService.dart';
import 'View/ProfileScreen/HelpCenter.dart';
import 'View/SplashScreen/OnBoardingScreen.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'View/SplashScreen/OnBoardingScreen2.dart';

Map<String, WidgetBuilder> namedRoutes = {
  '/': (context) => const SplashScreen(),
  StartScreen.routename: (context) => StartScreen(),
  OnboardingScreen.routename: (context) => OnboardingScreen(),
  LoginScreen.routename: (context) => LoginScreen(),
  BottomNavigationBarWidget.routename: (context) => BottomNavigationBarWidget(),
  AccountScreen.routename: (context) => AccountScreen(),
  HelpcenterScreen.routename: (context) => HelpcenterScreen(),
  CustomerServiceScreen.routename: (context) => CustomerServiceScreen(),
  // PropertyDetailScreen.routename: (context) => PropertyDetailScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  FormsScreen.routeName: (context) => FormsScreen(),
  FacilitiesScreen.routeName: (context) => FacilitiesScreen(),
  GalleryScreen.routeName: (context) => GalleryScreen(),
  ComplaintsScreen.routeName: (context) => ComplaintsScreen(),
  WaterBillScreen.routeName: (context) => WaterBillScreen(),
};

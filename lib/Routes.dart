import 'package:flutter/material.dart';
import 'package:realestate/View/SplashScreen/StartScreen.dart';

import 'View/SplashScreen/SplashScreen.dart';
import 'View/SplashScreen/StartScreen2.dart';


Map<String, WidgetBuilder> namedRoutes = {
  '/': (context) => const SplashScreen(),
  StartScreen.routename: (context) =>
      const StartScreen(),
      OnboardingScreen.routename: (context) =>
       OnboardingScreen(),
  // SplashScreen.routename: (context) => const SplashScreen(),
  // IccMenRankingScreen.routeName: (context) => const IccMenRankingScreen(),
  // IccWomenRankingScreen.routeName: (context) => const IccWomenRankingScreen(),
  // SignUpScreen.pageName: (context) => const SignUpScreen(),
  // LoginScreen.pageName: (context) => const LoginScreen(),
  // Dummy_Screen.routeName: (context) => const Dummy_Screen(),
  // MatchStatusScreen.routeName: (context) => const MatchStatusScreen(),
  // SpecificCatagoryScreen.routename: (context) => const SpecificCatagoryScreen(),
  // SpecificTopicScreen.routename: (context) => const SpecificTopicScreen(),
  // TermsOfUseScreen.routeName: (context) => const TermsOfUseScreen(),
  // CopyRightScreen.routeName: (context) => const CopyRightScreen(),
  // PrivacyPolicyScreen.routeName: (context) => const PrivacyPolicyScreen(),
  // AboutUsScreen.routeName: (context) => const AboutUsScreen(),
  // AboutScreen.routeName: (context) => const AboutScreen(),
  // SpecificStoryScreen.routename: (context) => const SpecificStoryScreen(),
  // IccWorldTestChampionshipScreen.routeName: (context) =>
  //     const IccWorldTestChampionshipScreen(),
  // IccWorldCupSuperleagueChampionshipScreen.routeName: (context) =>
  //     const IccWorldCupSuperleagueChampionshipScreen(),
  // Record1stScreen.routename: (context) => const Record1stScreen(),
  // Records2ndScreen.routename: (context) => const Records2ndScreen(),
  // PhotoGalleryScreen.routename: (context) => const PhotoGalleryScreen(),
  // PhotoGalleryScreen2.routename: (context) => const PhotoGalleryScreen2(),

  // BrowsePlayerScreen.routeName: (context) => const BrowsePlayerScreen(),
  // BrowseTeamsScreen.routeName: (context) => const BrowseTeamsScreen(),
  // SchedualScreen.routeName: (context) => const SchedualScreen(),
};

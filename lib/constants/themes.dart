
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants.dart';

class CustomTheme {
  var lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: kSecondaryColor,
    primaryColor: kPrimaryColor,
    primaryIconTheme: const IconThemeData(color: kSecondaryColor),

    colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor).copyWith(
      secondary: kSecondaryColor,
    ),
    tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        indicatorColor: Colors.white,
        // dividerColor: ,
        unselectedLabelColor: Colors.white70),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2.w)),
      backgroundColor: kPrimaryColor,
      foregroundColor: kTextWhiteColor,
      elevation: 4,
    )),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: kSecondaryColor,
      contentTextStyle: TextStyle(
          color: kTextWhiteColor, fontSize: 10.sp, fontWeight: FontWeight.w700),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: kPrimaryColor,
      centerTitle: false,
      titleTextStyle: TextStyle(
          fontSize: 15.sp,
          fontWeight: FontWeight.w800,
          letterSpacing: 2.0,
          color: kTextWhiteColor),
      iconTheme: IconThemeData(
        color: Colors.white,
        size: SizerUtil.deviceType == DeviceType.tablet ? 17.sp : 18.sp,
      ),
      elevation: 0,
    ),

    //input decoration theme for all our the app
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: kSecondaryColor,
      selectedItemColor: kPrimaryColor,
      unselectedItemColor: kUnselectedColor,
      type: BottomNavigationBarType.fixed,
      elevation: 0,
    ),

    inputDecorationTheme: const InputDecorationTheme().copyWith(
      contentPadding: EdgeInsets.symmetric(vertical: 4.w, horizontal: 1.h),
      filled: true,
      fillColor: kSecondaryColor,
      prefixIconColor: kPrimaryColor,
      suffixIconColor: kPrimaryColor,
      //label style for formField
      labelStyle: TextStyle(
          fontSize: 15.sp, color: kTextLightColor, fontWeight: FontWeight.w400),

      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kTextLightColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      border: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kTextLightColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kTextLightColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      // on focus  change color
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kSecondaryColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      //color changes when user enters wrong information,

      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
              color: kErrorBorderColor, width: kWidthOfInputBoarder),
          borderRadius: kBorderRadiusAll),
      //same on focus error color
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kErrorBorderColor,
            width: kWidthOfInputBoarder,
          ),
          borderRadius: kBorderRadiusAll),
    ),
    textTheme: TextTheme().copyWith(
      //custom text for headline
      headlineSmall: TextStyle(
        color: kOtherColor,
        fontSize: 10.sp,
      ),
      headlineMedium: TextStyle(
        color: kOtherColor,
        fontWeight: FontWeight.w300,
        fontSize: 15.sp,
      ),
      headlineLarge: TextStyle(
          color: kOtherColor, fontWeight: FontWeight.w400, fontSize: 35.sp
          //  SizerUtil.deviceType == DeviceType.tablet ? 22.sp : 35.sp,
          ),

      // body text style
      bodyLarge: const TextStyle(
        color: kOtherColor,
        // fontSize: 11.sp,
      ),
      bodyMedium: TextStyle(
        color: kOtherColor,
        fontSize: 15.sp,
      ),
      bodySmall: TextStyle(
          color: kTextBlackColor, fontSize: 9.sp, fontWeight: FontWeight.w500),

      // title style
      titleMedium: TextStyle(
          color: kTextBlackColor, fontSize: 17.sp, fontWeight: FontWeight.w700),
      titleSmall: TextStyle(
          color: kTextBlackColor, fontSize: 13.sp, fontWeight: FontWeight.w500),
    ),
  );
}

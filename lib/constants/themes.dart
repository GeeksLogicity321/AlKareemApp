import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'constants.dart';

class CustomTheme {
  var lightTheme = ThemeData.light(useMaterial3: true).copyWith(
    scaffoldBackgroundColor: kSecondaryColor,
    primaryColor: kPrimaryColor,
    primaryIconTheme: const IconThemeData(color: Colors.white),

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
      contentPadding: EdgeInsets.symmetric(vertical: 1.w, horizontal: 4.w),
      filled: true,
      fillColor: KformfieldColor,
      prefixIconColor: kPrimaryColor,
      alignLabelWithHint: true,

      suffixIconColor: Colors.grey,
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      floatingLabelAlignment: FloatingLabelAlignment.start,
      floatingLabelStyle: TextStyle(fontSize: 10.sp),
      hintStyle: TextStyle(
        fontSize: 10.sp,
        color: kTextLightColor,
      ),
      //label style for formField
      labelStyle: TextStyle(
          fontSize: 15.sp, color: kTextLightColor, fontWeight: FontWeight.w400),

      enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kTextLightColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
      border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kTextLightColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
      disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kTextLightColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
      // on focus  change color
      focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kSecondaryColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
      //color changes when user enters wrong information,

      errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kErrorBorderColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
      //same on focus error color
      focusedErrorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kErrorBorderColor,
          ),
          borderRadius: BorderRadius.circular(1.w)),
    ),
    textTheme: TextTheme().copyWith(
      //custom text for headline
      headlineSmall: TextStyle(
        color: kTextBlackColor,
        fontSize: 10.sp,
      ),
      headlineMedium: TextStyle(
        color: kTextBlackColor,
        fontWeight: FontWeight.bold,
        fontSize: 15.sp,
      ),
      headlineLarge: TextStyle(
          color: kTextBlackColor, fontWeight: FontWeight.bold, fontSize: 20.sp),

      // body text style
      bodyLarge: TextStyle(
          color: kTextBlackColor, fontSize: 20.sp, fontWeight: FontWeight.w500),
      bodyMedium: TextStyle(
        color: kOtherColor,
        fontSize: 15.sp,
      ),
      bodySmall: TextStyle(fontSize: 10.sp, color: Colors.grey),

      // title style
      titleLarge: TextStyle(
          fontSize: 19.sp, fontWeight: FontWeight.bold, color: kPrimaryColor),
      titleSmall: TextStyle(
          color: kPrimaryColor, fontSize: 13.sp, fontWeight: FontWeight.w500),
    ),
  );
}

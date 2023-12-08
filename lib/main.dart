import 'package:flutter/material.dart';
import 'package:realestate/Routes.dart';
import 'package:realestate/View/SplashScreen/SplashScreen.dart';
import 'package:realestate/constants/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: CustomTheme().lightTheme,
       initialRoute: SplashScreen.routename,
       routes: namedRoutes,
      );}
    );
  }
}

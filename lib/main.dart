import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'Routes.dart';
import 'Utills/AuthFunction.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'constants/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return ChangeNotifierProvider(
        create: (context) => LoginProvider(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: CustomTheme().lightTheme,
          initialRoute: SplashScreen.routename,
          routes: namedRoutes,
        ),
      );
    });
  }
}

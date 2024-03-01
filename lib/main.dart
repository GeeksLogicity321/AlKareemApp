import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/AuthTockenFunctions.dart';
import 'package:realestate/ViewModel/BottomnavProvider.dart';
import 'package:realestate/ViewModel/CatagoryProvider.dart';
import 'package:realestate/ViewModel/GalleryProvider.dart';
import 'package:realestate/ViewModel/PenaltyProvider.dart';
import 'Routes.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'ViewModel/AuthProvider.dart';
import 'ViewModel/FirebaseServices.dart';
import 'ViewModel/UserPaymentProvider.dart';
import 'constants/themes.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  await FirebaseNotifications.initialize();
  print(await FirebaseNotifications.getFCMTocken());
  setFmcTocken(await FirebaseNotifications.getFCMTocken() ?? '');

  // await FirebaseNotifications.initialize();

  // // Get the device token
  // String? deviceToken = await FirebaseNotifications.getFCMTocken();
  // print("Device Token: $deviceToken");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, device) {
      return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => LoginProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => CatagoryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => UserPaymentProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => TabControllerProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => GalleryProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => UserPenaltyProvider(),
          ),
        ],
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

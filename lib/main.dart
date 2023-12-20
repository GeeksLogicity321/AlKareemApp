import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:realestate/ViewModel/CatagoryProvider.dart';
import 'Routes.dart';
import 'View/SplashScreen/SplashScreen.dart';
import 'ViewModel/AuthProvider.dart';
import 'constants/themes.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
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
          // ChangeNotifierProvider(
          //   create: (context) => (),
          // )
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

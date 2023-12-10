import 'package:flutter/material.dart';
import 'package:realestate/View/LoginScreen.dart';
import 'package:realestate/View/SplashScreen/OnBoardingScreen2.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  static const routename = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 2.h),
                  child: Text(
                    'Al Kareem City',
                    style: Theme.of(context).textTheme.headlineMedium,
                  )),
              Image.asset(
                'Assets/StartScreen.png',
                fit: BoxFit.fitWidth,
              ),
              Text(
                'Welcome to \n AL Kareem City!',
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                'Let life be immersed in nature"s\nembrace.',
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 30.w,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                            context, LoginScreen.routename);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        foregroundColor: kPrimaryColor,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(3.w), // Border radius
                          side: BorderSide(
                              color: kPrimaryColor,
                              width: 0.5.w), // Border color and width
                        ),
                      ),
                      child: const Text(
                        'Skip',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacementNamed(
                              context, OnboardingScreen.routename);
                        },
                        child: Text('start')),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

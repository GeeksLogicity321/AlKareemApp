import 'package:flutter/material.dart';
import 'package:realestate/View/SplashScreen/SplashScreen.dart';
import 'package:realestate/View/SplashScreen/StartScreen2.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
    static const routename = 'StartScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white
      ,
      body: SafeArea(
        child: Column(
            children: [Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h),
              child: Text('Al Kareem City',style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold),)),
        
            
          Image.asset('Assets/StartScreen.png',fit: BoxFit.fitWidth,),
          


           Text('Welcome to \n AL Kareem City!',style: TextStyle(fontSize: 19.sp,fontWeight: FontWeight.w600),textAlign: TextAlign.center,),
           SizedBox(height: 1.h,),
                      Text('Let life be immersed in nature"s\nembrace.',style: TextStyle(fontSize: 10.sp,color: Colors.grey),textAlign: TextAlign.center,),


                      SizedBox(height: 3.h,),


                       Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                             width: 20.w,
                            child: ElevatedButton(
                                      onPressed: () {
                                      
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.transparent,
                                        foregroundColor: kPrimaryColor,
                                        elevation: 0,
                                        
                                        shape: RoundedRectangleBorder(
                                   
                                          borderRadius: BorderRadius.circular(3.w), // Border radius
                                          side: BorderSide(color: kPrimaryColor,width: 0.5.w), // Border color and width
                                        ),
                                      ),
                                      child: const Text(
                                        'Skip',
                                      ),
                              
                            ),
                          ),
                            SizedBox(
                              width: 20.w,
                              child: ElevatedButton(
                                                      
                                                      onPressed: (){
                                                        Navigator.pushReplacementNamed(context, OnboardingScreen.routename);
                                                      }, child: Text('start')),
                            )
                        ],
                      ),



          
          ],
        
            ),
      ));
  }
}
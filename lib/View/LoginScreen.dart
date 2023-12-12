import 'package:flutter/material.dart';
import 'package:realestate/View/BottomNavigationBar.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  static const routename = 'LoginScreen';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('Assets/LoginBackground.png'))),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 18.h,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 8.h,
                ),
                TextFormField(
                  validator: ,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                    labelText: 'Email',
                    hintText: 'Email',
                    
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextFormField(
                  obscureText: true,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration()
                      .copyWith(labelText: 'Password', hintText: 'Password'),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    Switch(
                      value: false,
                      onChanged: (_) {},
                    ),
                    Text(
                      'Remember me',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    Spacer(),
                    Text(
                      'Forgot Password',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 2.h,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, BottomNavigationBarWidget.routename);
                    },
                    child: Text('Next'),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                

                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don’t have an account? ",
                      style: TextStyle(
                        color: kTextWhiteColor,
                        fontSize: 12.sp,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        "Signup",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

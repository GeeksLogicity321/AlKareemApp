import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/AuthFunction.dart';
import 'package:realestate/View/BottomNavigationBar.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../ViewModel/ValidationFunction.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});
  static const routename = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('Assets/LoginBackground.png'))),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
              child: Form(
                key: _formKey,
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
                      validator: (value) {
                        return validateEmail(value);
                      },
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
                      validator: (value) {
                        return validatePassword(value);
                      },
                      obscureText: _obscure,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                          labelText: 'Password',
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                _obscure = !_obscure;
                              });
                            },
                            icon: Icon(_obscure
                                ? Icons.visibility_sharp
                                : Icons.visibility_off),
                          )),
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
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
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
                          _formKey.currentState!.validate()
                              ? Navigator.pushReplacementNamed(
                                  context, BottomNavigationBarWidget.routename)
                              : null;
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
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/View/BottomNavigationBar.dart';
import 'package:realestate/View/OTP_Screen.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';
import 'package:sizer/sizer.dart';

import '../Utills/validation.dart';
import '../ViewModel/UserPaymentProvider.dart';

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
                      onChanged: (value) {
                        context.read<LoginProvider>().setUniqueId(value);
                      },
                      controller: _emailController,
                      // validator: (value) {
                      //   return validateUniqueId(value);
                      // },
                      keyboardType: TextInputType.number,
                      style: TextStyle(fontSize: 10.sp),
                      decoration: InputDecoration().copyWith(
                        labelText: 'Unique Id',
                        hintText: 'Unique Id',
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    TextFormField(
                      controller: _passwordController,
                      onChanged: (value) {
                        context.read<LoginProvider>().setPassword(value);
                      },
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
                        onPressed: () async {
                          if (_formKey.currentState!.validate()) {
                            if (await context
                                .read<LoginProvider>()
                                .login(context)) {
                              FocusScope.of(context).unfocus();
                              if (context
                                      .read<LoginProvider>()
                                      .userObject
                                      .data!
                                      .isVerify !=
                                  null) {
                                if (context
                                        .read<LoginProvider>()
                                        .userObject
                                        .data!
                                        .isVerify ==
                                    true) {
                                  Navigator.pushReplacementNamed(context,
                                      BottomNavigationBarWidget.routename);
                                } else {
                                  Navigator.pushReplacementNamed(
                                      context, OtpScreen.routeName);
                                }
                              }
                            }
                          }
                        },
                        child: context.watch<LoginProvider>().isLoading
                            ? CircularProgressIndicator(
                                color: Colors.white,
                              )
                            : Text('Login'),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    SizedBox(
                      height: 6.h,
                    ),
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

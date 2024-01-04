import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../Utills/validation.dart';
import '../ViewModel/AuthProvider.dart';
import 'BottomNavigationBar.dart';

class NewPasswordScreen extends StatefulWidget {
  NewPasswordScreen({super.key});

  @override
  State<NewPasswordScreen> createState() => _NewPasswordScreenState();
}

class _NewPasswordScreenState extends State<NewPasswordScreen> {
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _passwordController2 = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool _obscure = true;
  bool _obscure2 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Enter a New Password'),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.w),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  'Assets/registration.png',
                  height: 30.h,
                  fit: BoxFit.contain,
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
                TextFormField(
                  controller: _passwordController2,
                  onChanged: (value) {
                    context.read<LoginProvider>().setPassword(value);
                  },
                  validator: (value) {
                    if (value != _passwordController.value.text) {
                      return 'password dose not match';
                    } else
                      return validatePassword(value);
                  },
                  obscureText: _obscure2,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                      labelText: 'Confirm Password',
                      hintText: 'Confirm Password',
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _obscure2 = !_obscure2;
                          });
                        },
                        icon: Icon(_obscure2
                            ? Icons.visibility_sharp
                            : Icons.visibility_off),
                      )),
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
                            .updatePassword(context)) {
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
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          BottomNavigationBarWidget()),
                                  (Route<dynamic> route) => false);
                            } else {
                              null;
                            }
                          }
                        }
                      }
                    },
                    child: context.watch<LoginProvider>().isLoading
                        ? CircularProgressIndicator(
                            color: Colors.white,
                          )
                        : Text('Change password'),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

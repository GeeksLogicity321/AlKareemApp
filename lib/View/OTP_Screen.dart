import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:realestate/View/BottomNavigationBar.dart';
import 'package:realestate/View/NewPasswordScreen.dart';
import 'package:realestate/ViewModel/AuthProvider.dart';
import 'package:realestate/ViewModel/PenaltyProvider.dart';
import 'package:realestate/constants/constants.dart';
import 'package:sizer/sizer.dart';

import '../Utills/AuthTockenFunctions.dart';
import '../Utills/SnackBars.dart';
import '../ViewModel/UserPaymentProvider.dart';
import '../constants/ApiConstants.dart';

class OtpScreen extends StatelessWidget {
  OtpScreen({super.key, this.forgotpassword});
  static const routeName = 'OtpScreen';

  final _formKey = GlobalKey<FormState>();

  final bool? forgotpassword;

  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    print(
        '${context.read<LoginProvider>().OTPcode} == ${otpController.value.text}');
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'Assets/registration.png',
                    height: 30.h,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(
                    height: 0.02.h,
                  ),
                  const Text(
                    'Verification',
                    style: TextStyle(fontSize: 28, color: Colors.black),
                  ),
                  SizedBox(
                    height: 0.02.h,
                  ),
                  Text(
                    'Enter A 6 digit number that was sent to you by Admin',
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 0.2.w),
                    padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        // ignore: prefer_const_literals_to_create_immutables
                        boxShadow: [
                          const BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                        borderRadius: BorderRadius.circular(16.0)),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 0.025.w),
                            child: PinCodeTextField(
                              controller: otpController,
                              validator: (value) => otpValidator(value),
                              keyboardType: TextInputType.number,
                              backgroundColor: Colors.transparent,
                              appContext: context,
                              length: 6,
                            ),
                          ),
                          SizedBox(
                            height: 0.04.h,
                          ),
                          GestureDetector(
                            onTap: () async {
                              if (_formKey.currentState!.validate()) {
                                if (forgotpassword == null) {
                                  verifyOtp(context);
                                } else {
                                  print(
                                      '${context.read<LoginProvider>().OTPcode} == ${otpController.value.text}');
                                  if (context.read<LoginProvider>().OTPcode ==
                                      otpController.value.text) {
                                    Navigator.of(context).pushAndRemoveUntil(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                NewPasswordScreen()),
                                        (Route<dynamic> route) => false);
                                  } else {
                                    errorSnackbar(context, 'Wrong OTP');
                                  }
                                }
                              }
                            },
                            child: Container(
                              margin: const EdgeInsets.all(8),
                              height: 45,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: kPrimaryColor,
                                borderRadius: BorderRadius.circular(36),
                              ),
                              alignment: Alignment.center,
                              child: const Text(
                                'Verify',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 16.0),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  String? otpValidator(String? value) {
    if (value != null) {
      value.length < 6 ? 'enter valid OTP' : null;
    } else {
      return 'Please Enter OTP';
    }
    return null;
  }

  Future<void> verifyOtp(BuildContext context) async {
    final userid = context.read<LoginProvider>().userObject.data!.sId;
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.otp + userid!);

      final jsonencode = jsonEncode({"otp": otpController.text});
      final response = await http.post(
        url,
        body: jsonencode,
        headers: headers,
      );

      if (response.statusCode == 200) {
        Map<String, dynamic> jsonResponse = jsonDecode(response.body);
        successSnackbar(context, 'OTP varification Successfull');
        SetAuthTocken(jsonResponse['Token'],
            context.read<LoginProvider>().userObject.data!.sId!);
        context.read<UserPaymentProvider>().setSeclected(
            context, context.read<LoginProvider>().userObject.data!.sId!);
        context.read<UserPenaltyProvider>().setSeclected(
            context, context.read<LoginProvider>().userObject.data!.sId!);
        Navigator.pushReplacementNamed(
            context, BottomNavigationBarWidget.routename);
      } else {
        errorSnackbar(context, 'OTP varification Failure');
      }
    } catch (e) {
      errorSnackbar(context, 'OTP varification Error:' + e.toString());
    }
  }

  //Basic alert dialogue for alert errors and confirmations
  // void showAlertDialog(BuildContext context, String message) {
  //   // set up the AlertDialog
  //   final CupertinoAlertDialog alert = CupertinoAlertDialog(
  //     title: const Text('Error'),
  //     content: Text('\n$message'),
  //     actions: <Widget>[
  //       CupertinoDialogAction(
  //         isDefaultAction: true,
  //         child: const Text('Ok'),
  //         onPressed: () {
  //           Navigator.of(context).pop();
  //         },
  //       )
  //     ],
  //   );
  //   // show the dialog
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return alert;
  //     },
  //   );
  // }
}

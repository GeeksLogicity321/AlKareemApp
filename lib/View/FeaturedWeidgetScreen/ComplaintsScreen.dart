import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:realestate/Utills/validation.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import '../../Utills/SnackBars.dart';
import '../../constants/ApiConstants.dart';
import '../../constants/constants.dart';

class ComplaintsScreen extends StatelessWidget {
  ComplaintsScreen({super.key});
  static const routeName = "ComplaintsScreen";
  final TextEditingController _nameControler = TextEditingController();
  final TextEditingController _numberControler = TextEditingController();
  final TextEditingController _houseControler = TextEditingController();
  final TextEditingController _streetControler = TextEditingController();
  final TextEditingController _emailControler = TextEditingController();
  final TextEditingController _sectorControler = TextEditingController();
  final TextEditingController _phaseControler = TextEditingController();
  final TextEditingController _descriptionControler = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Complaints'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: TextFormField(
                  controller: _nameControler,
                  validator: (value) {
                    if (value != null && value.isNotEmpty) {
                      return null;
                    } else {
                      return 'Please Enter Your Name';
                    }
                  },
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                      enabledBorder: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      fillColor: kScaffoldBackgroundColor,
                      hintText: 'Full Name',
                      hintStyle: TextStyle(fontSize: 12.sp)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: TextFormField(
                  controller: _emailControler,
                  validator: (value) {
                    return isValidEmail(value);
                  },
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                      enabledBorder: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      fillColor: kScaffoldBackgroundColor,
                      hintText: 'Email',
                      hintStyle: TextStyle(fontSize: 12.sp)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: TextFormField(
                  controller: _numberControler,
                  validator: (value) {
                    return isValidMobileNumber(value);
                  },
                  style: TextStyle(fontSize: 10.sp),
                  decoration: InputDecoration().copyWith(
                      enabledBorder: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 2.w, vertical: 0.5.h),
                      fillColor: kScaffoldBackgroundColor,
                      hintText: 'Mobile Number',
                      hintStyle: TextStyle(fontSize: 12.sp)),
                ),
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      child: TextFormField(
                        controller: _houseControler,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return 'Please Enter Your House Number';
                          }
                        },
                        style: TextStyle(fontSize: 10.sp),
                        decoration: InputDecoration().copyWith(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.5.h),
                            fillColor: kScaffoldBackgroundColor,
                            hintText: 'House',
                            hintStyle: TextStyle(fontSize: 12.sp)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      child: TextFormField(
                        controller: _streetControler,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return 'Please Enter Your Street Name';
                          }
                        },
                        style: TextStyle(fontSize: 10.sp),
                        decoration: InputDecoration().copyWith(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.5.h),
                            fillColor: kScaffoldBackgroundColor,
                            hintText: 'Street',
                            hintStyle: TextStyle(fontSize: 12.sp)),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      child: TextFormField(
                        controller: _sectorControler,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return 'Please Enter Your Sector Name';
                          }
                        },
                        style: TextStyle(fontSize: 10.sp),
                        decoration: InputDecoration().copyWith(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.5.h),
                            fillColor: kScaffoldBackgroundColor,
                            hintText: 'Sector',
                            hintStyle: TextStyle(fontSize: 12.sp)),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                      child: TextFormField(
                        controller: _phaseControler,
                        validator: (value) {
                          if (value != null && value.isNotEmpty) {
                            return null;
                          } else {
                            return 'Please Enter Your Phase Name';
                          }
                        },
                        style: TextStyle(fontSize: 10.sp),
                        decoration: InputDecoration().copyWith(
                            enabledBorder: OutlineInputBorder(),
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 2.w, vertical: 0.5.h),
                            fillColor: kScaffoldBackgroundColor,
                            hintText: 'phase',
                            hintStyle: TextStyle(fontSize: 12.sp)),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: SizedBox(
                  height: 20.h,
                  child: TextFormField(
                    controller: _descriptionControler,
                    validator: (value) {
                      if (value != null && value.isNotEmpty) {
                        return null;
                      } else {
                        return 'Please Enter Your Complaint';
                      }
                    },
                    expands: true,
                    maxLines: null,
                    style: TextStyle(fontSize: 10.sp),
                    decoration: InputDecoration().copyWith(
                        enabledBorder: OutlineInputBorder(),
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 2.w, vertical: 0.5.h),
                        fillColor: kScaffoldBackgroundColor,
                        hintText: 'complaint Description',
                        hintStyle: TextStyle(
                          fontSize: 12.sp,
                        )),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 2.h, horizontal: 4.w),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          _formKey.currentState!.validate()
                              ? callComplaintApi(context)
                              // ignore: unnecessary_statements
                              : null;
                        },
                        child: Text('Submit'))),
              ),
              SizedBox(
                height: 10.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  callComplaintApi(BuildContext context) async {
    final url = Uri.parse(ApiConstants.Email);

    try {
      final responseToSend = jsonEncode({
        'subject': 'Complaints',
        'from': _emailControler.value.text,
        'name': _nameControler.value.text,
        'data': {
          'number': _numberControler.value.text,
          'house': _houseControler.value.text,
          'street': _streetControler.value.text,
          'sector': _sectorControler.value.text,
          'phase': _phaseControler.value.text,
          'description': _descriptionControler.value.text,
        }
      });
      print(responseToSend);
      http.Response response = await http.post(url,
          headers: {"Content-Type": "application/json"}, body: responseToSend);
      final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
      if (response.statusCode == 200) {
        successSnackbar(context, jsonResponse['data']);
      } else {
        errorSnackbar(context, jsonResponse['data']);
      }
    } catch (e) {
      errorSnackbar(context, 'Error: $e');
    }
  }
}

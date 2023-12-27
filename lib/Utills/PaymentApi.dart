import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/constants/ApiConstants.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

import '../ViewModel/UserPaymentProvider.dart';

payNow(String planId, BuildContext context) async {
  final url = Uri.parse(ApiConstants.payNow + planId);

  try {
    http.Response response = await http.post(url);
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      context.read<UserPaymentProvider>().getPayments(context);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: EdgeInsets.only(bottom: 50.h),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Success!',
          message: '${jsonResponse['data']}',
          contentType: ContentType.success,
        ),
      ));
    } else {
      errorSnackbar(context,
          'status code: ${response.statusCode},${jsonResponse['data']}');
    }
  } catch (e) {
    errorSnackbar(context, 'Error: ${e}');
  }
}

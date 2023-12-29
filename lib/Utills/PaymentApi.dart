import 'dart:convert';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/ViewModel/PenaltyProvider.dart';
import 'package:realestate/constants/ApiConstants.dart';
import 'package:http/http.dart' as http;
import 'package:sizer/sizer.dart';

import '../ViewModel/UserPaymentProvider.dart';

payInstallmentsNow(String planId, BuildContext context) async {
  final url = Uri.parse(ApiConstants.payInstallmentNow + planId);

  try {
    http.Response response = await http.post(url);
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      context.read<UserPaymentProvider>().getPayments(context);
      successSnackbar(context, 'success ${jsonResponse['data']}');

      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: EdgeInsets.only(bottom: 50.h),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Success!',
          message:
              '{status code: ${response.statusCode},${jsonResponse['data']}}',
          contentType: ContentType.failure,
        ),
      ));
      Navigator.pop(context);
    }
  } catch (e) {
    errorSnackbar(context, 'Error: ${e}');
    Navigator.pop(context);
  }
}


payPenaltyNow(String penaltyId, BuildContext context) async {
  final url = Uri.parse(ApiConstants.payPenaltyNow + penaltyId);

  try {
    http.Response response = await http.post(url);
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      context.read<UserPenaltyProvider>().getPenalties(context);
      successSnackbar(context, 'success ${jsonResponse['message']}');

      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        margin: EdgeInsets.only(bottom: 50.h),
        elevation: 0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.transparent,
        content: AwesomeSnackbarContent(
          title: 'Success!',
          message:
              '{status code: ${response.statusCode},${jsonResponse['message']}}',
          contentType: ContentType.failure,
        ),
      ));
      Navigator.pop(context);
    }
  } catch (e) {
    errorSnackbar(context, 'Error: ${e}');
    Navigator.pop(context);
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/ViewModel/PenaltyProvider.dart';
import 'package:realestate/constants/ApiConstants.dart';
import 'package:http/http.dart' as http;

import '../ViewModel/UserPaymentProvider.dart';

payInstallmentsNow(String planId, BuildContext context) async {
  final url = Uri.parse(ApiConstants.payInstallmentNow + planId);

  try {
    http.Response response = await http.post(url);
    final Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    if (response.statusCode == 200) {
      context.read<UserPaymentProvider>().getPayments(context);
      successSnackbar(context, 'success ${jsonResponse['data']}');

      Navigator.popUntil(context, (route) => route.isFirst);
    } else {
      errorSnackbar(context,
          '{status code: ${response.statusCode},${jsonResponse['message']}}');

      Navigator.popUntil(context, (route) => route.isFirst);
    }
  } catch (e) {
    errorSnackbar(context, 'Error: $e');
    Navigator.popUntil(context, (route) => route.isFirst);
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
      context.read<UserPaymentProvider>().getPayments(context);

      Navigator.popUntil(context, (route) => route.isFirst);
    } else {
      errorSnackbar(context,
          '{status code: ${response.statusCode},${jsonResponse['message']}}');
      context.read<UserPaymentProvider>().getPayments(context);

      Navigator.popUntil(context, (route) => route.isFirst);
    }
  } catch (e) {
    errorSnackbar(context, 'Error: $e');
    Navigator.popUntil(context, (route) => route.isFirst);
  }
}

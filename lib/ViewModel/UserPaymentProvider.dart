import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:realestate/Models/PaymentsModel.dart';
import '../Utills/SnackBars.dart';
import '../constants/ApiConstants.dart';

class UserPaymentProvider extends ChangeNotifier {
  String? _selected;
  String? get selected => _selected;

  num? _tolatPayment = 0;
  num? get tolatPayment => _tolatPayment;

  List<PaymentsModel>? _paymentsList = [];
  List<PaymentsModel>? get paymentsList => _paymentsList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setSeclected(BuildContext context, String userId) {
    _selected = userId;
    getPayments(context);
    notifyListeners();
  }

  Future<bool> getPayments(BuildContext context) async {
    // _isLoading = true;
    // notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.payments + _selected!);
      final response = await http.get(
        url,
        headers: headers,
      );
      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        _tolatPayment = 0;
        _paymentsList!.clear();
        for (var i in jsonResponse['data']) {
          _paymentsList!.add(PaymentsModel.fromJson(i));
          if (i['firstPendingPayment'] != null) {
            _tolatPayment = _tolatPayment! + i['firstPendingPayment']['amount'];
          }
        }

        _isLoading = false;
        notifyListeners();

        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context,
            'Error While Fetching Payments status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Error While Fetching Payments' + e.toString());

      return false;
    }
  }
}

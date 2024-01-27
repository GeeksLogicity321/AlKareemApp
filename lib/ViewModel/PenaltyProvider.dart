import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:realestate/Models/PenaltyModel.dart';
import '../Utills/SnackBars.dart';
import '../constants/ApiConstants.dart';

class UserPenaltyProvider extends ChangeNotifier {
  String? _selected;
  String? get selected => _selected;

  num? _totalPenalties = 0;
  num? get totalPenalties => _totalPenalties;

  List<PenaltyModel>? _penaltyList = [];
  List<PenaltyModel>? get penaltyList => _penaltyList;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  void setSeclected(BuildContext context, String userId) {
    _selected = userId;
    getPenalties(context);
  }

  Future<bool> getPenalties(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    // Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.penalty + _selected!);
      final response = await http.get(
        url,
        // headers: headers,
      );
      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        _totalPenalties = 0;
        _penaltyList!.clear();
        if (jsonResponse['data'] != null) {
          for (var i in jsonResponse['data']) {
            _penaltyList!.add(PenaltyModel.fromJson(i));
            if (i['amount'] != null && i['paid'] == false) {
              _totalPenalties = _totalPenalties! + i['amount'];
            }
          }
        }

        _isLoading = false;
        notifyListeners();

        return true;
      } else {
        _penaltyList!.clear();
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context,
            'Error While Fetching Penalties status code: ${response.statusCode}');
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Error While Fetching Penalties' + e.toString());

      return false;
    }
  }
}

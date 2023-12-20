import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:realestate/Models/CatagoryModel.dart';
import 'package:http/http.dart' as http;
import 'package:realestate/Models/FormModel.dart';
import '../Utills/SnackBars.dart';
import '../constants/ApiConstants.dart';

class CatagoryProvider extends ChangeNotifier {
  List<CatagoryModel> _catagory = [];
  List<CatagoryModel> get catagory => _catagory;
  List<FormModel> _form = [];
  List<FormModel> get getForm => _form;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String? _selected;
  get selected => _selected;

  void setSelected(String value, BuildContext context) {
    _selected = value;
    fetchForms(context);
    notifyListeners();
  }

  Future<void> fetchCatagory(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.catagory);
      final response = await http.get(
        url,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        for (final i in jsonResponse['data']) {
          _catagory.add(CatagoryModel.fromJson(i));
        }

        _isLoading = false;
        notifyListeners();
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context,
            'Error fetching catagory status Coded: ${response.statusCode}');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Error fetching catagory' + e.toString());
    }
  }

  Future<void> fetchForms(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.forms + _selected!);
      final response = await http.get(
        url,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = json.decode(response.body);

        for (final i in jsonResponse['data']) {
          _form.add(FormModel.fromJson(i));
        }

        _isLoading = false;
        notifyListeners();
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context,
            'Error fetching catagory status Coded: ${response.statusCode}');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Error fetching catagory' + e.toString());
    }
  }
}

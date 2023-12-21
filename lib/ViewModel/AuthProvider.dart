import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:realestate/Models/UserModel.dart';
import 'package:realestate/Utills/AuthTockenFunctions.dart';
import 'package:realestate/Utills/SnackBars.dart';

import '../constants/ApiConstants.dart';

class LoginProvider extends ChangeNotifier {
  String _uniqueId = '';
  String _password = '';

  late UserModel _userObject;
  UserModel get userObject => _userObject;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String get uniqueId => _uniqueId;
  String get password => _password;

  void setUniqueId(String value) {
    _uniqueId = value;
    notifyListeners();
  }

  void setUserObject(UserModel object) {
    _userObject = object;
    notifyListeners();
  }

  void setUserImage(String image) {
    _userObject.data!.profilePic = image;
    notifyListeners();
  }

  void setPassword(String value) {
    _password = value;
    notifyListeners();
  }

  Future<bool> login(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.login);

      final jsonencode =
          jsonEncode({"uniqueId": _uniqueId, "password": _password});
      final response = await http.post(
        url,
        body: jsonencode,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        _userObject = UserModel.fromJson(jsonResponse);
        _userObject.data!.isVerify!
            ? SetAuthTocken(jsonResponse['Token'], _userObject.data!.sId!)
            : null;
        _isLoading = false;
        notifyListeners();

        successSnackbar(context, 'Login Successful');

        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context, 'Login Error');
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Login Error' + e.toString());

      return false;
    }
  }

  Future<bool> getUser(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    String? userId = await loadUserId();
    try {
      final Uri url = Uri.parse(ApiConstants.userOne + userId!);

      final response = await http.get(
        url,
        headers: headers,
      );

      if (response.statusCode == 200) {
        _isLoading = true;
        final Map<String, dynamic> jsonResponse = json.decode(response.body);
        _userObject = UserModel.fromJson(jsonResponse);

        _userObject.token = await loadTocken();

        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        throw Exception('Could not Load User');

        // errorSnackbar(context, 'Could not load user');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'loading user Error' + e.toString());
      throw e;
    }
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:realestate/Models/UserModel.dart';
import 'package:realestate/Utills/AuthTockenFunctions.dart';
import 'package:realestate/Utills/SnackBars.dart';
import 'package:realestate/View/LoginScreen.dart';
import 'package:realestate/View/OTP_Screen.dart';

import '../View/BottomNavigationBar.dart';
import '../constants/ApiConstants.dart';
import 'PenaltyProvider.dart';
import 'UserPaymentProvider.dart';

class LoginProvider extends ChangeNotifier {
  String _uniqueId = '';
  String _password = '';
  String _fCMToken = '';

  late UserModel _userObject;
  UserModel get userObject => _userObject;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  String get uniqueId => _uniqueId;
  String get password => _password;

  String? _oTPcode;
  String? get oTPcode => _oTPcode;
  String? _userId;
  String? get userId => _userId;
  void setFCM(String fCMToken) {
    _fCMToken = fCMToken;
    notifyListeners();
  }

  void setotp(String value) {
    _oTPcode = value;
    notifyListeners();
  }

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

      final jsonencode = jsonEncode({
        "uniqueId": _uniqueId,
        "password": _password,
        "deviceToken": _fCMToken
      });
      final response = await http.post(
        url,
        body: jsonencode,
        headers: headers,
      );

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        _userObject = UserModel.fromJson(jsonResponse);
        if (_userObject.data!.isVerify!) {
          setAuthTocken(jsonResponse['Token'], _userObject.data!.sId!);
          context
              .read<UserPaymentProvider>()
              .setSeclected(context, _userObject.data!.sId!);
          context
              .read<UserPenaltyProvider>()
              .setSeclected(context, _userObject.data!.sId!);
        }
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

  Future<bool> updatePassword(BuildContext context) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};
    try {
      final Uri url = Uri.parse(ApiConstants.updatePassword + _userId!);

      final jsonencode = jsonEncode({"password": _password});
      final response = await http.put(
        url,
        body: jsonencode,
        headers: headers,
      );

      if (response.statusCode == 200) {
        _isLoading = false;
        notifyListeners();
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => LoginScreen()),
            (Route<dynamic> route) => false);
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context, ' Error while changing password');
        return false;
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'Error' + e.toString());

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
      final jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        _userObject = UserModel.fromJson(jsonResponse);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
                builder: (context) => BottomNavigationBarWidget()),
            (Route<dynamic> route) => false);
        _isLoading = false;
        notifyListeners();
        return true;
      } else {
        _isLoading = false;
        notifyListeners();
        throw Exception(
            'Could not Load User. statuscode:${response.statusCode}');

        // errorSnackbar(context, 'Could not load user');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      // errorSnackbar(context, 'loading user Error' + e.toString());
      throw e;
    }
  }

  void getForgetPasswordUser(
    BuildContext context,
  ) async {
    _isLoading = true;
    notifyListeners();
    Map<String, String> headers = {'Content-Type': 'application/json'};

    try {
      final Uri url = Uri.parse(ApiConstants.forgetPassword + _uniqueId);

      final response = await http.post(
        url,
        headers: headers,
      );
      final Map<String, dynamic> jsonResponse = json.decode(response.body);

      if (response.statusCode == 200) {
        _isLoading = true;
        _oTPcode = jsonResponse['code'].toString();
        _userId = jsonResponse['data']['_id'];
        _isLoading = false;
        notifyListeners();
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => OtpScreen(
                    forgotpassword: true,
                  )),
        );
      } else {
        _isLoading = false;
        notifyListeners();
        errorSnackbar(context, 'Incorrect Code');
      }
    } catch (e) {
      _isLoading = false;
      notifyListeners();
      errorSnackbar(context, 'loading user Error' + e.toString());
    }
  }
}

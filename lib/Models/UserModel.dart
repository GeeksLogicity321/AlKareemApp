import 'DataModel.dart';

class UserModel {
  bool? success;
  String? message;
  String? token;
  Data? data;

  UserModel({this.success, this.message, this.token, this.data});

  UserModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    message = json['message'];
    token = json['Token'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
}

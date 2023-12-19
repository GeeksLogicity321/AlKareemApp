import 'PlotModel.dart';

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
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }
}

class Data {
  String? sId;
  String? name;
  String? uniqueId;
  String? hashPassword;
  List<PlotModel>? plotId;
  bool? paymentOnThatMonth;
  bool? isVerify;
  String? createdAt;
  String? updatedAt;
  int? iV;
  String? oTP;
  String? profilePic;

  Data(
      {this.sId,
      this.name,
      this.uniqueId,
      this.hashPassword,
      this.plotId,
      this.paymentOnThatMonth,
      this.isVerify,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.oTP,
      this.profilePic});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    uniqueId = json['uniqueId'];
    hashPassword = json['hash_password'];
    if (json['plotId'] != null) {
      plotId = <PlotModel>[];
      json['plotId'].forEach((v) {
        plotId!.add(PlotModel.fromJson(v));
      });
    }
    paymentOnThatMonth = json['paymentOnThatMonth'];
    isVerify = json['isVerify'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    iV = json['__v'];
    oTP = json['OTP'];
    profilePic = json['profile_pic'];
  }
}

import 'package:realestate/Models/PlanIdModel.dart';

class Data {
  String? sId;
  String? name;
  String? uniqueId;
  int? cNIC;
  String? fatherName;
  String? address;
  String? nationality;
  String? country;
  String? area;
  String? dOB;
  String? email;
  String? hashPassword;
  List<PlanId>? planId;
  bool? isVerify;
  String? oTP;
  String? profilePic;

  Data(
      {this.sId,
      this.name,
      this.uniqueId,
      this.cNIC,
      this.fatherName,
      this.address,
      this.nationality,
      this.country,
      this.area,
      this.dOB,
      this.email,
      this.hashPassword,
      this.planId,
      this.isVerify,
      this.oTP,
      this.profilePic});

  Data.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    uniqueId = json['uniqueId'];
    cNIC = json['CNIC'];
    fatherName = json['fatherName'];
    address = json['address'];
    nationality = json['nationality'];
    country = json['country'];
    area = json['area'];
    dOB = json['DOB'];
    email = json['email'];
    hashPassword = json['hash_password'];
    if (json['planId'] != null) {
      planId = <PlanId>[];
      json['planId'].forEach((v) {
        planId!.add(PlanId.fromJson(v));
      });
    }
    isVerify = json['isVerify'];
    oTP = json['OTP'];
    profilePic = json['profile_pic'];
  }
}

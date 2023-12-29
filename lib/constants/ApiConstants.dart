import 'package:google_maps_flutter/google_maps_flutter.dart';

class ApiConstants {
  static const baseURL = 'https://al-kareem-d5985be4bd31.herokuapp.com';
  // static const baseURL = 'http://192.168.100.153:5000';
  static const register = '${baseURL}/user/register';
  static const login = '${baseURL}/user/login';
  static const update = '${baseURL}/user/update/:userId';
  static const otp = '${baseURL}/user/otp/';
  static const userOne = '${baseURL}/user/one/';
  static const uploadPic = '${baseURL}/user/profilePic';
  static const catagory = '${baseURL}/getFormCategory';
  static const forms = '${baseURL}/getForm/';
  static const payments = '${baseURL}/userPayment/';
  static const payNow = '${baseURL}/payment/';
  static const gallery = '${baseURL}/getAllGallery';          
    static const penalty = '${baseURL}/userPanelty/'; 

  static const LatLng alKareemCordinates =
      LatLng(31.29229738594992, 74.22060065177402);
}

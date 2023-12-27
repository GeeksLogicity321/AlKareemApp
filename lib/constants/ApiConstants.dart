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
}

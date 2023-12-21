class ApiConstants {
  static const baseURL = 'http://192.168.0.117:5000';
  static const register = '${baseURL}/user/register';
  static const login = '${baseURL}/user/login';
  static const update = '${baseURL}/user/update/:userId';
  static const otp = '${baseURL}/user/otp/';
  static const userOne = '${baseURL}/user/one/';
  static const uploadPic = '${baseURL}/user/profilePic';
  static const catagory = '${baseURL}/getFormCategory';
  static const forms = '${baseURL}/getForm/';
}

String? validateUniqueId(String? uniqueid) {
  if (uniqueid != null) {
    final RegExp idRegExp = RegExp(r'^[A-Za-z]\d{7}$');
    return idRegExp.hasMatch(uniqueid) ? null : 'enter correct Unique Id';
  } else {
    return 'enter you Unique Id';
  }
}

String? validatePassword(String? password) {
  if (password != null && password.isNotEmpty) {
    // if (RegExp(r'^.{6,}$').hasMatch(password.toString())) {
    //   return 'Password must be longer than 5';
    // }
    // if (!password.contains(RegExp(r'[A-Z]'))) {
    //   return 'Password must contain a capital letter';
    // }
    // if (!password.contains(RegExp(r'[a-z]'))) {
    //   return 'Password must contain a Lower case letter';
    // }
    // if (!password.contains(RegExp(r'[0-9]'))) {
    //   return 'Password must contain a number';
    // }
    // if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   return false;
    // }
    return null;
  } else {
    return 'enter a password';
  }
}

String? isValidEmail(String? email) {
  final RegExp emailRegExp = RegExp(
    r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
  );
  if (email == null || email.isEmpty) {
    return 'enter your email';
  } else if (emailRegExp.hasMatch(email) == false) {
    return 'enter a valid email';
  } else {
    return null;
  }
}

String? isValidMobileNumber(String? phoneNumber) {
  final RegExp mobileNumberRegExp = RegExp(
    r'^[0-9]{11}$',
  );

  if (phoneNumber == null || phoneNumber.isEmpty) {
    return 'enter your phoneNumber';
  } else if (mobileNumberRegExp.hasMatch(phoneNumber) == false) {
    return 'enter a valid phoneNumber';
  } else {
    return null;
  }
}

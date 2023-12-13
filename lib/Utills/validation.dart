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

String? validateEmail(String? email) {
  if (email != null) {
    final RegExp emailRegExp = RegExp(
      r'^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegExp.hasMatch(email) ? null : 'enter correct email';
  } else {
    return 'enter you email';
  }
}

String? validatePassword(String? password) {
  if (password != null) {
    if (password.length < 8) {
      return 'Password must be longer than 8';
    }
    if (!password.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain a capital letter';
    }
    if (!password.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain a Lower case letter';
    }
    if (!password.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain a number';
    }
    // if (!password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
    //   return false;
    // }
    return null;
  } else {
    return 'enter a password';
  }
}

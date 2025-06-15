extension ValidPassword on String {
  bool get isValidPassWord {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d).*$').hasMatch(this);
  }
}

class ColorValidator {
  static bool check(String data) {
    RegExp exp = RegExp(r"[A-F\d]{2}$");
    return exp.hasMatch(data);
  }
}

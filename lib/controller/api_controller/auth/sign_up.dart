import 'dart:developer';

class SignUpService {
  static Future signinService(
      {required String email, required String pass}) async {
    try {
      await Future.delayed(Duration(seconds: 2));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}

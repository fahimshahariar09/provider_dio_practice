import 'dart:developer';

class NewPasswordService {
  static Future newpassswordService() async {
    try {
      await Future.delayed(Duration(seconds: 3));
      return true;
    } catch (e) {
      log("error $e");
    }
    return false;
  }
}

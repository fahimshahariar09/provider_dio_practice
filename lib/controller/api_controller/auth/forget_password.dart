import 'dart:developer';

class ForgetPasswordService {
  static Future<bool> forgetpasswordService()async{
    try {
      await Future.delayed(Duration(seconds:2));

    } catch (e) {
      log("error $e");
    }
    return false;
  }
}

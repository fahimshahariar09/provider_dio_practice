import 'dart:developer';

import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool isLoading = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool checkBox = true;
  Future postLogin() async {
    try {} catch (e) {
      log("error: $e");
    }
  }
}

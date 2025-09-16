import 'dart:developer';

import 'package:flutter/material.dart';

class LoginProvider with ChangeNotifier {
  bool isLoading = false;
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();
  bool checkBox = true;
  Future postLogin() async {
    try {
      await Future.delayed(Duration(seconds: 2));
    } catch (e) {
      log("error: $e");
    }
  }
}

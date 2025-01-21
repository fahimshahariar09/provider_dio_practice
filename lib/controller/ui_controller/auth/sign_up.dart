import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/api_controller/auth/sign_up.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = true.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  signupFun() async {
    isLoading.value = true;
    SignUpService.signupService(
        email: emailController.text, pass: passController.text);
    isLoading.value = false;
  }

}

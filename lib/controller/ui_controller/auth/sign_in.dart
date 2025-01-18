import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/api_controller/auth/sign_in.dart';

class SignInController extends GetxController {
  RxBool isLoading = true.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  signinFun() async {
    isLoading.value = true;
    SignInService.signinService(
        email: emailController.text, pass: passController.text);
    isLoading.value = false;
  }
}

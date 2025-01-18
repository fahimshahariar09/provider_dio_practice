
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignInController extends GetxController{

  RxBool isLoading = true.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
}
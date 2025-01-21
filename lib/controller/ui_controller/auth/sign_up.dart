import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  final formKey = GlobalKey<FormState>();
  RxBool isLoading = true.obs;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
}

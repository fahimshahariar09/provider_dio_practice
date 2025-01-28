import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/ui_controller/auth/forget_password.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/email_text_field.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    ForgetPasswordController forgetPasswordController =
        Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Forget Password"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
             EmailTextField(emailController: emailController)
          ],
        ),
      ),
    );
  }
}

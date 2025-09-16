import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/ui_controller/auth/sign_in.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/email_text_field.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/password_text_field.dart';

class Sign extends StatelessWidget {
  const Sign({super.key});

  @override
  Widget build(BuildContext context) {
    SignInController signInController = Get.put(SignInController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign in"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text("Email"),
              EmailTextField(
                emailController: signInController.emailController,
              ),
              SizedBox(height: 10),
              Text("password"),
              PasswordTextField(
                passController: signInController.passController,
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

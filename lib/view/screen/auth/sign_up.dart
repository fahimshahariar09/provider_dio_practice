import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/ui_controller/auth/sign_up.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/email_text_field.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/password_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    SignUpController signUpController = Get.put(SignUpController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              Text("email"),
              EmailTextField(emailController: signUpController.emailController),
              SizedBox(height: 10),
              Text("phone"),
              PasswordTextField(
                  passController: signUpController.passController),
              SizedBox(height: 10),
              Text("password"),
              TextField(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

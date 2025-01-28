import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider_dio_practice/controller/ui_controller/auth/new_password.dart';
import 'package:provider_dio_practice/view/common_widget/custom_button.dart';
import 'package:provider_dio_practice/view/screen/auth/widget/password_text_field.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    NewPasswordController newPasswordController =
        Get.put(NewPasswordController());
    return Scaffold(
      appBar: AppBar(
        title: Text("New Password"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              PasswordTextField(
                  passController: newPasswordController.passwordController),
              SizedBox(height: 10),
              PasswordTextField(
                  passController: newPasswordController.newpasswordController),
              SizedBox(height: 20),
              CustomButton(buttonName: "change password", onTap: () {})
            ],
          ),
        ),
      ),
    );
  }
}

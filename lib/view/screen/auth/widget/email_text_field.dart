import 'package:flutter/material.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController});

  final TextEditingController emailController;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.red, width: 1),
        ),
        hintText: "Email",
        prefixIcon: Icon(Icons.email)
      ),
      validator: (value){
        if(value == "" || value == null){
          return "E,ail can't be empty";
        }else if(!(value.toString().contains('.') || value.contains("@"))){
          return "Please your valid mail";
        }
        return null;
      },
    );
  }
}

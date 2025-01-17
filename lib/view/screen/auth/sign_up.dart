import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
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
              TextField(),
              SizedBox(height: 10),
              Text("phone"),
              TextField(),
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

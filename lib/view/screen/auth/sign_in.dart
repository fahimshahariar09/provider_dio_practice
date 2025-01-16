import 'package:flutter/material.dart';

class Sig extends StatelessWidget {
  const Sig({super.key});

  @override
  Widget build(BuildContext context) {
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
            ],
          ),
        ),
      ),
    );
  }
}

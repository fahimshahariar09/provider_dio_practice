import 'package:flutter/material.dart';
import 'package:provider_dio_practice/view/common_widget/custom_text.dart';

class ProfileEdit extends StatefulWidget {
  const ProfileEdit({super.key});

  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Edit"),
        leading: Icon(Icons.arrow_back),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            CustomText(text: "Name"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Name"),
            ),
            SizedBox(height: 10),
            CustomText(text: "Email"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Email"),
            ),
            SizedBox(height: 10),
            CustomText(text: "Phone"),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                  hintText: "Phone"),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

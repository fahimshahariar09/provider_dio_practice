import 'package:flutter/material.dart';
import 'package:provider_dio_practice/view/screen/profile/widget/profile_view_card.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        leading: Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          ProfileViewCard(
            title: "Profile",
            icon: Icon(Icons.person),
            onTap: () {},
          ),
          ProfileViewCard(
            title: "Change Password",
            icon: Icon(Icons.person),
            onTap: () {},
          ),
          ProfileViewCard(
            title: "Teams and Conditions",
            icon: Icon(Icons.person),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

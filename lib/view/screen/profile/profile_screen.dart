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
            title: "title",
            icon: Icon(Icons.person),
            onTap: () {},
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileViewCard extends StatelessWidget {
  const ProfileViewCard({super.key, required this.title, required this.icon});

  final String title;
  final Widget icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        icon,
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
              color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 15),
        )
      ],
    );
  }
}

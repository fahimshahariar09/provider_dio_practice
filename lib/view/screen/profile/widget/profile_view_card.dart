import 'package:flutter/material.dart';

class ProfileViewCard extends StatelessWidget {
  const ProfileViewCard(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap});

  final String title;
  final Widget icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                icon,
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                      fontSize: 15),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

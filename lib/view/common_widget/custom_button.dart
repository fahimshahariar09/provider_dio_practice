import 'package:flutter/material.dart';
import 'package:provider_dio_practice/view/common_widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.buttonName, required this.onTap});

  final String buttonName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        color: Colors.orange,
        child: SizedBox(
          height: 45,
          child: CustomText(text: buttonName),
        ),
      ),
    );
  }
}

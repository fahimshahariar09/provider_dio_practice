import 'package:flutter/material.dart';
import 'package:provider_dio_practice/view/common_widget/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonName});

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: 45,
        child: CustomText(text: buttonName),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text, this.fontColor, this.fontSize});

  final String text;
  final Color? fontColor;
  final double? fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      textDirection: TextDecoration.lineThrough,
      text,
      style: TextStyle(
          color: fontColor,
          fontSize: fontSize ?? 15,
          fontWeight: FontWeight.normal,
          fontFamily: "RobotoSerif"),
      maxLines: 1,
    );
  }
}

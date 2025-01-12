import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText(
      {super.key,
      required this.text,
      this.fontColor,
      this.fontSize,
      this.fontWeight,
      this.maxline});

  final String text;
  final Color? fontColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final int? maxline;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: fontColor,
          fontSize: fontSize ?? 15,
          fontWeight: fontWeight ?? FontWeight.normal,
          fontFamily: "RobotoSerif"),
      maxLines: maxline ?? 1,
    );
  }
}

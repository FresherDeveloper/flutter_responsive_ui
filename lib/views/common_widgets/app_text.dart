import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';

class AppText extends StatelessWidget {
  const AppText(
      {super.key,
      required this.text,
      this.fontSize = 24,
      this.color = AppColors.white,
      this.fontWeight=FontWeight.bold
      });
  final String text;
  final double fontSize;
  final Color color;
 final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontFamily: 'Montserrat',
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

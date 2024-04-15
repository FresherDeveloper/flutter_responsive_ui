import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.all(16), backgroundColor: AppColors.blue),
      onPressed: () {},
      child: AppText(
        text: text,
      ),
    );
  }
}

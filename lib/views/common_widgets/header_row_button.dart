import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';

class HeaderRowButton extends StatelessWidget {
  const HeaderRowButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 20,
              ),
              backgroundColor: AppColors.blue),
          onPressed: () {},
          child: const AppText(
            text: "Get Vaccine",
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.blue), // Adjust border color
            borderRadius: const BorderRadius.all(
                Radius.circular(18)), // Adjust border radius
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                // padding: const EdgeInsets.symmetric(
                //   horizontal: 16,
                //   vertical: 20,
                // ),
                backgroundColor: AppColors.textButtonColor.withOpacity(.1)),
            onPressed: () {},
            child: const AppText(
              text: "Help Centre",
            ),
          ),
        ),
      ],
    );
  }
}

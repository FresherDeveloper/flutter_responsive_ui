import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section1TextWidget extends StatelessWidget {
  const Section1TextWidget({
    super.key,
    required this.textStyle,
  });

  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        AppText(
          text: "Get Vaccinated. Boost your Immune System",
          color: AppColors.blue,
          fontSize: Responsive.isDesktop(context)
              ? 24
              : Responsive.isTablet(context)
                  ? 18
                  : 12,
        ),
        const SizedBox(height: 20),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "COVID-19 Vaccination \n Got Easier With,\n",
                style: textStyle,
              ),
              TextSpan(
                text: " Vaccination.ng",
                style: textStyle.copyWith(color: AppColors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20),
        AppText(
          text:
              "Vaccination.ng will help you find the nearest \n centre for vaccination, in all 36 states in Nigeria.",
          color: AppColors.white.withOpacity(0.7),
          fontSize: Responsive.isDesktop(context)
              ? 24
              : Responsive.isTablet(context)
                  ? 20
                  : 14,
        ),
      ],
    );
  }
}

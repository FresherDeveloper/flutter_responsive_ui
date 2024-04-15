import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section5 extends StatelessWidget {
  const Section5({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: mainPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const AppText(text: "Covid-19 Prevention"),
          const SizedBox(
            height: 20,
          ),
          FittedBox(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "COVID-19 ",
                    style: textStyle,
                  ),
                  TextSpan(
                    text: "Symptoms",
                    style: textStyle.copyWith(color: AppColors.blue),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FittedBox(
            child: Responsive.isDesktop(context)
                ? AppText(
                    text:
                        "Adipiscing nec etiam tortor elit quisque. Arcu aliquet convallis aenean eu velit.\nMi vestibulum, ullamcorper venenatis imperdiet augue arcu donec neque.",
                    fontWeight: FontWeight.w500,
                    color: AppColors.white.withOpacity(.5),
                  )
                : Text(
                    "Adipiscing nec etiam tortor elit quisque.\nArcu aliquet convallis aenean eu velit.\nMi vestibulum, ullamcorper venenatis imperdiet augue arcu \ndonec neque.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: AppColors.white.withOpacity(.5),
                    ),
                  ),
          ),
          const SizedBox(
            height: 150,
          ),
          Image.asset(
            Responsive.isDesktop(context)
                ? "asset/images/Group 65.png"
                : "asset/images/Group 65 (1).png",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/responsive.dart';

class PhoneNumberWidget extends StatelessWidget {
  const PhoneNumberWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: MediaQuery.of(context).size.width*.5,
      padding: const EdgeInsets.all(10),
      alignment: Alignment.center,

      decoration: BoxDecoration(
          color: AppColors.textButtonColor.withOpacity(.2),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Row(
        children: [
          Image.asset(
            'asset/images/twemoji_flag-nigeria.png',
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 8.0),
          SvgPicture.asset(
            'asset/icons/chevron-down.svg',
            width: 30,
            height: 30,
          ),
          const SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  // Adds border
                  borderRadius: BorderRadius.circular(
                      10.0), // Adjust border radius as needed
                  borderSide: const BorderSide(
                      color: Colors.transparent), // Adjust border color
                ),
                hintText: "Phone number",
                hintStyle: TextStyle(
                  color: AppColors.black.withOpacity(.25),
                  fontFamily: 'Montserrat',
                  fontSize: Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

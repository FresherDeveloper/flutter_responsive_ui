import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/common_widgets/appbar_content.dart';
import 'package:responsive_ui/views/common_widgets/header_row_button.dart';
import 'package:responsive_ui/views/common_widgets/phone_number_widget.dart';
import 'package:responsive_ui/views/common_widgets/section1ImageWiget.dart';
import 'package:responsive_ui/views/common_widgets/section1TextWidget.dart';
import 'package:responsive_ui/views/responsive.dart';
import 'package:responsive_ui/views/sections/section1.dart';
import 'package:responsive_ui/views/sections/section2.dart';
import 'package:responsive_ui/views/sections/section3.dart';
import 'package:responsive_ui/views/sections/section4.dart';
import 'package:responsive_ui/views/sections/section5.dart';
import 'package:responsive_ui/views/sections/section6.dart';
import 'package:responsive_ui/views/sections/section7.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "asset/images/unsplash_SfDofjXtxHE.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          shrinkWrap: true,
          children: [
            const Section1(),
            Container(
              color: AppColors.white,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                //mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(
                  imagePaths.length,
                  (index) => Expanded(
                    child: Image.asset(
                      imagePaths[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Section2(),
            const SizedBox(
              height: 30,
            ),
            const Section3(),
            //  const SizedBox(
            //   height: 30,
            // ),
            const Section4(),
            const SizedBox(
              height: 30,
            ),
            const Section5(),
            const Section6(),

            const Section7(),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: mainPadding,
              child: AppBarContent(
                isDesktopLayout: Responsive.isDesktop(context),
                isBottom: true,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/common_widgets/appbar_content.dart';
import 'package:responsive_ui/views/common_widgets/blueButton.dart';
import 'package:responsive_ui/views/common_widgets/header_row_button.dart';
import 'package:responsive_ui/views/common_widgets/section1ImageWiget.dart';
import 'package:responsive_ui/views/common_widgets/section1TextWidget.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section1 extends StatelessWidget {
  const Section1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 30, right: 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarContent(isDesktopLayout: Responsive.isDesktop(context)),
          Responsive.isDesktop(context)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Section1TextWidget(textStyle: textStyle),
                    const SizedBox(
                      height: 20,
                    ),
                    const Expanded(child: Section1ImageWidget()),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Section1TextWidget(
                        textStyle: textStyle.copyWith(
                            fontSize: Responsive.isTablet(context) ? 36 : 24)),
                    const SizedBox(
                      height: 20,
                    ),

                    const HeaderRowButton(),
                    // Section1ImageWidget(),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      "asset/images/Group 22.png",
                      fit: BoxFit.cover,
                    )
                  ],
                ),
          Row(
            children: [
              SvgPicture.asset(
                "asset/icons/Group 5.svg",
              ),
              AppText(
                text: "Schedule your Vaccination",
                fontSize: Responsive.isMobile(context) ? 14 : 24,
              )
            ],
          ),
          Container(
            //margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            //height: MediaQuery.of(context).size.height * .2,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                color: AppColors.textButtonColor.withOpacity(0.5)),
            child: Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      sectionBottomText(
                        image: "asset/icons/Group 6.svg",
                        text1: "Location",
                        text2: "Ikeja Lagos, Nigeria",
                      ),
                      sectionBottomText(
                        image: "asset/icons/Group 7.svg",
                        text1: "Date",
                        text2: "29 February, 2022",
                      ),
                      sectionBottomText(
                        image: "asset/icons/Group 9.svg",
                        text1: "Vaccine Type",
                        text2: "Mordena",
                      ),
                      const BlueButton(text: "Submit")
                    ],
                  )
                : Responsive.isMobile(context)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sectionBottomText(
                            image: "asset/icons/Group 6.svg",
                            text1: "Location",
                            text2: "Ikeja Lagos, Nigeria",
                          ),
                          sectionBottomText(
                            image: "asset/icons/Group 7.svg",
                            text1: "Date",
                            text2: "29 February, 2022",
                          ),
                          sectionBottomText(
                            image: "asset/icons/Group 9.svg",
                            text1: "Vaccine Type",
                            text2: "Mordena",
                          ),
                          const BlueButton(text: "Submit")
                        ],
                      )
                    : Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              sectionBottomText(
                                image: "asset/icons/Group 6.svg",
                                text1: "Location",
                                text2: "Ikeja Lagos, Nigeria",
                              ),
                              sectionBottomText(
                                image: "asset/icons/Group 7.svg",
                                text1: "Date",
                                text2: "29 February, 2022",
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              sectionBottomText(
                                image: "asset/icons/Group 9.svg",
                                text1: "Vaccine Type",
                                text2: "Mordena",
                              ),
                              const BlueButton(text: "Submit")
                            ],
                          )
                        ],
                      ),
          ),
        ],
      ),
    );
  }

  sectionBottomText(
      {required String image, required String text1, required String text2}) {
    return Row(
      children: [
        SvgPicture.asset(
          image,
        ),
        const SizedBox(
          width: 10,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppText(
              text: text1,
              fontWeight: FontWeight.w600,
              color: AppColors.white.withOpacity(.5),
            ),
            AppText(text: text2),
          ],
        ),
      ],
    );
  }
}

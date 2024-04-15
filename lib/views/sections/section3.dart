import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        color: AppColors.textButtonColor.withOpacity(.1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        text: "Why get vaccinated \ntoday?",
                        fontSize: 47.9,
                      ),
                      AppText(
                        text:
                            "Magna adipiscing at elit at ornare lectus nibh lorem.\n Ac, sed ac lorem pellentesque vestibulum risus matti.\n In molestie condimentum malesuada non.",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: AppColors.white.withOpacity(.5),
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const AppText(
                        text: "Why get vaccinated \ntoday?",
                        fontSize: 47.9,
                      ),
                      AppText(
                        text:
                            "Magna adipiscing at elit at ornare lectus nibh lorem.\n Ac, sed ac lorem pellentesque vestibulum risus matti.\n In molestie condimentum malesuada non.",
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                        color: AppColors.white.withOpacity(.5),
                      ),
                    ],
                  ),
            const SizedBox(
              height: 20,
            ),
            Responsive.isDesktop(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(30),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: AppColors.textButtonColor.withOpacity(.2),
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(
                                49,
                              ),
                              topRight: Radius.circular(149),
                              bottomLeft: Radius.circular(
                                49,
                              ),
                              bottomRight: Radius.circular(
                                49,
                              )),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SvgPicture.asset("asset/icons/Group 31.svg"),
                            const SizedBox(
                              height: 20,
                            ),
                            const AppText(
                              text:
                                  "Protects your immune\n system against viruses",
                              color: AppColors.blue,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const AppText(
                              text:
                                  "Velit ut consectetur mauris, orci amet,\n faucibus. \nSit turpis fringilla ipsum pretium,\ndictum. Dolor eget vel nulla lorem ac.",
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            readMoreWidget(
                                textColor: AppColors.blue,
                                arrowColor: AppColors.blue),
                          ],
                        ),
                      ),
                      boxContainer(
                          icon: "asset/icons/Group 31 (1).svg",
                          text: "Minimize the spread \nof the Virus"),
                      boxContainer(
                          icon: "asset/icons/Group 31 (2).svg",
                          text: "Protect yourself")
                    ],
                  )
                : Responsive.isTablet(context)
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(30),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.textButtonColor.withOpacity(.2),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(
                                    49,
                                  ),
                                  topRight: Radius.circular(149),
                                  bottomLeft: Radius.circular(
                                    49,
                                  ),
                                  bottomRight: Radius.circular(
                                    49,
                                  )),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("asset/icons/Group 31.svg"),
                                const SizedBox(
                                  height: 20,
                                ),
                                const AppText(
                                  text:
                                      "Protects your immune\n system against viruses",
                                  color: AppColors.blue,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const AppText(
                                  text:
                                      "Velit ut consectetur mauris, orci amet,\n faucibus. \nSit turpis fringilla ipsum pretium,\ndictum. Dolor eget vel nulla lorem ac.",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                readMoreWidget(
                                    textColor: AppColors.blue,
                                    arrowColor: AppColors.blue),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              boxContainer(
                                  icon: "asset/icons/Group 31 (1).svg",
                                  text: "Minimize the spread \nof the Virus"),
                              boxContainer(
                                  icon: "asset/icons/Group 31 (2).svg",
                                  text: "Protect yourself")
                            ],
                          )
                        ],
                      )
                    : Column(
                        //crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(30),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: AppColors.textButtonColor.withOpacity(.2),
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(
                                    49,
                                  ),
                                  topRight: Radius.circular(149),
                                  bottomLeft: Radius.circular(
                                    49,
                                  ),
                                  bottomRight: Radius.circular(
                                    49,
                                  )),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset("asset/icons/Group 31.svg"),
                                const SizedBox(
                                  height: 20,
                                ),
                                const AppText(
                                  text:
                                      "Protects your immune\n system against viruses",
                                  color: AppColors.blue,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const AppText(
                                  text:
                                      "Velit ut consectetur mauris, orci amet,\n faucibus. \nSit turpis fringilla ipsum pretium,\ndictum. Dolor eget vel nulla lorem ac.",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                readMoreWidget(
                                    textColor: AppColors.blue,
                                    arrowColor: AppColors.blue),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          boxContainer(
                              icon: "asset/icons/Group 31 (1).svg",
                              text: "Minimize the spread \nof the Virus"),
                          const SizedBox(
                            height: 20,
                          ),
                          boxContainer(
                              icon: "asset/icons/Group 31 (2).svg",
                              text: "Protect yourself")
                        ],
                      ),
          ],
        ));
  }

  Row readMoreWidget(
      {required Color textColor, Color arrowColor = AppColors.white}) {
    return Row(
      children: [
        AppText(
          text: "Read More",
          fontSize: 18,
          color: textColor,
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          "asset/icons/arrow-right.svg",
          color: arrowColor,
        ),
      ],
    );
  }

  Container boxContainer({required String icon, required String text}) {
    return Container(
      padding: const EdgeInsets.all(30),
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: AppColors.textButtonColor.withOpacity(.2),
          borderRadius: const BorderRadius.all(Radius.circular(30))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(icon),
          const SizedBox(
            height: 20,
          ),
          AppText(text: text),
          const SizedBox(
            height: 20,
          ),
          readMoreWidget(
              textColor: AppColors.white.withOpacity(.5),
              arrowColor: AppColors.white.withOpacity(.5)),
        ],
      ),
    );
  }
}

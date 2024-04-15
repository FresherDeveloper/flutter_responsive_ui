import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section6 extends StatelessWidget {
  const Section6({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mainPadding,
      // width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "asset/images/unsplash_Y4MKctPwIrw.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
               AppText(
                text: "FEEDBACK",
                color: AppColors.blue,
                fontSize:  Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
              ),
              Text(
                "What our Patients Think",
                style: textStyle.copyWith(color: AppColors.black,fontSize:  Responsive.isDesktop(context)?48:Responsive.isTablet(context)?36:24),
              ),
              Center(
                child: AppText(
                  text:
                      "Adipiscing nec etiam tortor elit quisque. Arcu aliquet convallis aenean eu velit.\n Mi vestibulum, ullamcorper venenatis imperdiet augue arcu donec neque.",
                  color: AppColors.black.withOpacity(.5),
                  fontWeight: FontWeight.w500,
                  fontSize:  Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    Responsive.isDesktop(context)
                        ? "asset/images/Group 74.png"
                        : "asset/images/Group 74 (1).png",
                    fit: BoxFit.cover,
                  ),
                  // Center(
                  //   child: AppText(
                  //     text:
                  //         "Adipiscing nec etiam tortor elit quisque. Arcu aliquet convallis aenean eu velit.\n Mi vestibulum, ullamcorper venenatis imperdiet augue arcu donec neque.",
                  //     color: AppColors.black.withOpacity(.5),
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                  // const SizedBox(
                  //   height: 30,
                  // ),
                  Responsive.isDesktop(context)
                      ? FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              imageContainer(
                                image: "asset/images/Rectangle 25.png",
                                textc1: "Oyindamola Maja",
                                textc2: "Badagry, Lagos",
                                textStyle: richTextStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: const EdgeInsets.all(30),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColors.textButtonColor
                                        .withOpacity(.2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20)),
                                              child: Image.asset(
                                                "asset/images/Rectangle 24.png",
                                                fit: BoxFit.cover,
                                              )),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AppText(
                                                text: "Okeowo Lekan",
                                              ),
                                              AppText(
                                                text: "Ikeja, Lagos",
                                                fontSize: 14,
                                                color: AppColors.white
                                                    .withOpacity(.75),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        """“Got my vaccine very close to my house.\n Was very easy scheduling \nan appointment.”""",
                                        textAlign: TextAlign.center,
                                        style: richTextStyle.copyWith(
                                            color: AppColors.white
                                                .withOpacity(.75)),
                                      ),
                                    ]),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              imageContainer(
                                image: "asset/images/Rectangle 26.png",
                                textc1: "Kafaru Temitope",
                                textc2: "Obanikoro, Lagos",
                                textStyle: richTextStyle,
                              ),
                            ],
                          ),
                        )
                      : Container(
                          alignment: Alignment.center,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                height: 140,
                              ),
                              imageContainer(
                                image: "asset/images/Rectangle 25.png",
                                textc1: "Oyindamola Maja",
                                textc2: "Badagry, Lagos",
                                textStyle: richTextStyle,
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                padding: const EdgeInsets.all(30),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color: AppColors.textButtonColor
                                        .withOpacity(.2),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(30))),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(20)),
                                              child: Image.asset(
                                                "asset/images/Rectangle 24.png",
                                                fit: BoxFit.cover,
                                              )),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const AppText(
                                                text: "Okeowo Lekan",
                                              ),
                                              AppText(
                                                text: "Ikeja, Lagos",
                                                fontSize: 14,
                                                color: AppColors.white
                                                    .withOpacity(.75),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Text(
                                        """“Got my vaccine very close to my house.\n Was very easy scheduling \nan appointment.”""",
                                        textAlign: TextAlign.center,
                                        style: richTextStyle.copyWith(
                                            color: AppColors.white
                                                .withOpacity(.75)),
                                      ),
                                    ]),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              imageContainer(
                                image: "asset/images/Rectangle 26.png",
                                textc1: "Kafaru Temitope",
                                textc2: "Obanikoro, Lagos",
                                textStyle: richTextStyle,
                              ),
                            ],
                          ),
                        ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Container imageContainer(
      {required String image,
      required String textc1,
      required String textc2,
      required TextStyle textStyle}) {
    return Container(
        padding: const EdgeInsets.all(30),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: AppColors.textButtonColor.withOpacity(.2),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      child: Image.asset(
                        image,
                        fit: BoxFit.cover,
                      )),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: textc1,
                        color: AppColors.black,
                      ),
                      AppText(
                        text: textc2,
                        color: AppColors.black.withOpacity(.5),
                        fontSize: 14,
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "“Been stressing about a close centre \n to get the",
                      style: textStyle,
                    ),
                    TextSpan(
                      text: " covid-19 ",
                      style: textStyle.copyWith(color: AppColors.blue),
                    ),
                    TextSpan(
                      text: "vaccine, until\ni tried Vaccination.ng”",
                      style: textStyle,
                    ),
                  ],
                ),
              )
            ]));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section7 extends StatelessWidget {
  const Section7({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: Responsive.isDesktop(context)
            ? MediaQuery.of(context).size.width * .5
            : MediaQuery.of(context).size.width * .7,
        padding: const EdgeInsets.all(30),
        alignment: Alignment.bottomCenter,
        decoration: const BoxDecoration(
            color: AppColors.blue,
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: FittedBox(
          child: Column(
            children: [
              const AppText(
                text: "Get a quote",
                fontSize: 48,
              ),
              const AppText(
                text: "Please do enter your email address below",
                fontWeight: FontWeight.w500,
              ),
              Container(
                width:Responsive.isMobile(context)?MediaQuery.of(context).size.width * .7: MediaQuery.of(context).size.width * .4,
                height: MediaQuery.of(context).size.height * .08,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: const OutlineInputBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  bottomLeft: Radius.circular(
                                      10)), // Adjust border radius as needed
                              borderSide: BorderSide(
                                  color: Colors
                                      .transparent), // Adjust border color
                            ),
                            hintText: "lenux.ng@gmail.com",
                            hintStyle: TextStyle(
                              color: AppColors.black.withOpacity(.25),
                              fontFamily: 'Montserrat',
                              fontSize:Responsive.isMobile(context)? 10:20,
                              fontWeight: FontWeight.w500,
                            ),
                            filled: true,
                            fillColor: AppColors.white),
                      ),
                    ),
                    Container(
                      width:Responsive.isMobile(context)?MediaQuery.of(context).size.width * .1: MediaQuery.of(context).size.width * .05,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                        color: AppColors.darkBlue,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)),
                      ),
                      child: SvgPicture.asset(
                        "asset/icons/send.svg",
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

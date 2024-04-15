import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/common_widgets/blueButton.dart';
import 'package:responsive_ui/views/common_widgets/phone_number_widget.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section4 extends StatelessWidget {
  const Section4({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: mainPadding,
      color: AppColors.white,
      child: Responsive.isDesktop(context)|| Responsive.isTablet(context)
          ? Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: AppText(
                          text: Responsive.isTablet(context)
                              ? "Get your vaccine registration\ntoday"
                              : "Get your vaccine \nregistration today",
                          fontSize: Responsive.isDesktop(context)?48:36,
                          color: AppColors.black,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       AppText(
                        text: "Patient’s Full Name",
                        color: AppColors.black,
                       fontSize:  Responsive.isDesktop(context)?24:20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            // Adds border
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust border radius as needed
                            borderSide: const BorderSide(
                                color:
                                    Colors.transparent), // Adjust border color
                          ),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                            // Adds border
                            borderRadius: BorderRadius.circular(
                                10.0), // Adjust border radius as needed
                            //borderSide: BorderSide(color: borderColor), // Adjust border color
                          ),
                          fillColor: AppColors.white.withOpacity(.7),
                          hintText: "Full name",
                          hintStyle: TextStyle(
                            color: AppColors.black.withOpacity(.25),
                            fontFamily: 'Montserrat',
                            fontSize: Responsive.isDesktop(context)?24:20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                       AppText(
                        text: "Mobile Number",
                        color: AppColors.black,
                        fontSize: Responsive.isDesktop(context)?24:20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      AppText(
                        text:
                            "Notifications for appointment and reminders will be sent to this \nprovided number",
                        color: AppColors.black.withOpacity(.5),
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(child: PhoneNumberWidget()),
                          SizedBox(width: 10,),
                          BlueButton(text: "Verify")
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        width: double.infinity,
                        child: BlueButton(text: "Submit"),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AppText(
                            text: "Already registered ?",
                            fontSize:Responsive.isTablet(context)?14: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.black.withOpacity(.5),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                           AppText(
                            text: "Check your status",
                            fontSize: Responsive.isTablet(context)?14:20,
                            color: AppColors.blue,
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                Image.asset(
                  "asset/images/Group 45.png",
                  fit: BoxFit.cover,
                )
              ],
            )
          : ListView(
              shrinkWrap: true,
              children: [
                Image.asset(
                  "asset/images/Group 45.png",
                  fit: BoxFit.cover,
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const AppText(
                      text: "Get your vaccine \nregistration today",
                      fontSize: 14,
                      color: AppColors.black,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppText(
                      text: "Patient’s Full Name",
                      color: AppColors.black,
                      fontSize: 14,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          // Adds border
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust border radius as needed
                          borderSide: const BorderSide(
                              color: Colors.transparent), // Adjust border color
                        ),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          // Adds border
                          borderRadius: BorderRadius.circular(
                              10.0), // Adjust border radius as needed
                          //borderSide: BorderSide(color: borderColor), // Adjust border color
                        ),
                        fillColor: AppColors.white.withOpacity(.7),
                        hintText: "Full name",
                        hintStyle: TextStyle(
                          color: AppColors.black.withOpacity(.25),
                          fontFamily: 'Montserrat',
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const AppText(
                      text: "Mobile Number",
                      color: AppColors.black,
                      fontSize: 14,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    AppText(
                      text:
                          "Notifications for appointment and reminders will be sent to this \nprovided number",
                      color: AppColors.black.withOpacity(.5),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                   
                       const PhoneNumberWidget(),
                       const SizedBox(
                      height: 20,
                    ),
                               const BlueButton(text: "Verify"),
                    const SizedBox(
                      height: 20,
                    ),
                    const SizedBox(
                      width: double.infinity,
                      child: BlueButton(text: "Submit"),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppText(
                          text: "Already registered ?",
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppColors.black.withOpacity(.5),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const AppText(
                          text: "Check your status",
                          fontSize: 20,
                          color: AppColors.blue,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ],
            ),
    );
  }
}

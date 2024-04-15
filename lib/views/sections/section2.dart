import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class Section2 extends StatelessWidget {
  const Section2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: mainPadding,
        decoration: BoxDecoration(
            color: AppColors.textButtonColor.withOpacity(.1),
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            )),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              color: AppColors.textButtonColor.withOpacity(.05),
              child:  AppText(
                  text: "Check your COVID-19 result on our Database",
                  fontSize:  Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
                  ),
            ),
            const SizedBox(
              height: 20,
            ),
            Responsive.isDesktop(context)
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      customTextfield(
                        context: context,
                          text: "Okeowo", borderColor: AppColors.blue),
                      const SizedBox(
                        width: 10,
                      ),
                      customTextfield(
                        context: context,
                          text: "NIK Number",
                          borderColor: AppColors.white.withOpacity(.5)),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: AppColors.blue), // Adjust border color
                          borderRadius: BorderRadius.circular(
                              16.0), // Adjust border radius
                        ),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor:
                                  AppColors.textButtonColor.withOpacity(.1)),
                          onPressed: () {},
                          child:  AppText(
                            text: "Check",
                            fontSize:  Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
                            color: AppColors.blue,
                          ),
                        ),
                      )
                    ],
                  )
                : Container(
                    height: 300,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        customTextfield(
                          context: context,
                            text: "Okeowo", borderColor: AppColors.blue),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        customTextfield(
                          context: context,
                            text: "NIK Number",
                            borderColor: AppColors.white.withOpacity(.5)),
                        // const SizedBox(
                        //   width: 10,
                        // ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: AppColors.blue), // Adjust border color
                            borderRadius: BorderRadius.circular(
                                16.0), // Adjust border radius
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 16,
                                ),
                                backgroundColor:
                                    AppColors.textButtonColor.withOpacity(.1)),
                            onPressed: () {},
                            child:  AppText(
                              text: "Check",
                              fontSize: Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
                              color: AppColors.blue,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              //width: MediaQuery.of(context).size.width*.8,
              decoration: BoxDecoration(
                  color: AppColors.textButtonColor.withOpacity(.1),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  )),
              child: AppText(
                text:
                    "Need a certificate for your COVID-19 result? Please click here",
                color: AppColors.blue,
                fontSize: Responsive.isDesktop(context)?24:Responsive.isTablet(context)?14:10,
              ),
            ),
          ],
        ));
  }

  Expanded customTextfield({required String text, required Color borderColor,required BuildContext context}) {
    return Expanded(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            // Adds border
            borderRadius:
                BorderRadius.circular(10.0), // Adjust border radius as needed
            borderSide: const BorderSide(
                color: AppColors.textButtonColor), // Adjust border color
          ),
          filled: true,
          enabledBorder: OutlineInputBorder(
            // Adds border
            borderRadius:
                BorderRadius.circular(10.0), // Adjust border radius as needed
            borderSide: BorderSide(color: borderColor), // Adjust border color
          ),
          fillColor: AppColors.textButtonColor.withOpacity(.1),
          hintText: text,
          hintStyle:  TextStyle(
            color: AppColors.white,
            fontFamily: 'Montserrat',
            fontSize:  Responsive.isDesktop(context)?24:Responsive.isTablet(context)?20:14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

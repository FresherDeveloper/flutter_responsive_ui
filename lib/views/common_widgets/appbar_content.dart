// Widget for app bar content
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_ui/utils/app_colors.dart';
import 'package:responsive_ui/utils/conts.dart';
import 'package:responsive_ui/views/common_widgets/app_text.dart';
import 'package:responsive_ui/views/responsive.dart';

class AppBarContent extends StatelessWidget {
  final bool isDesktopLayout;
  final bool isBottom;
  const AppBarContent(
      {Key? key, required this.isDesktopLayout, this.isBottom = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isDesktopLayout
        ? Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const AppText(
                    text: "Vaccination.ng",
                    fontSize: 32,
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    height: 3,
                    width: 200,
                    color: AppColors.blue,
                  ),
                ],
              ),
              // if (isDesktopLayout||isBottom)
              SizedBox(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const AppText(
                          text: "Home",
                        ),
                        !isBottom
                            ? Container(
                                height: 5,
                                width: 5,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blue,
                                ),
                              )
                            : const SizedBox(),
                      ],
                    ),
                    AppText(
                      text: "Services",
                      color: AppColors.white.withOpacity(.8),
                    ),
                    AppText(
                      text: "Schedule",
                      color: AppColors.white.withOpacity(.8),
                      fontWeight: FontWeight.w500,
                    ),
                    AppText(
                      text: "Contact us",
                      color: AppColors.white.withOpacity(.8),
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                ),
              ),

              !isBottom
                  ? isDesktopLayout
                      ? ElevatedButton(
                          style: TextButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              backgroundColor:
                                  AppColors.textButtonColor.withOpacity(.1)),
                          onPressed: () {},
                          child: const AppText(
                            text: "Check Status",
                            color: AppColors.blue,
                          ),
                        )
                      : IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                            "asset/icons/Group 83.svg",
                          ),
                        )
                  : Expanded(
                      //width:MediaQuery.of(context).size.width / 2.5 ,

                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(
                          logoPaths.length,
                          (index) => SvgPicture.asset(
                            logoPaths[index],
                          ),
                        ),
                      ),
                    )
            ],
          )
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppText(
                    text: "Vaccination.ng",
                    fontSize: Responsive.isTablet(context) ? 26 : 18,
                  ),
                  if (!isBottom)
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        "asset/icons/Group 83.svg",
                      ),
                    )
                ],
              ),
              Container(
                padding: EdgeInsets.zero,
                height: 3,
                width: 100,
                color: AppColors.blue,
              ),
              if (isBottom)
                SizedBox(
                  width: MediaQuery.of(context).size.width / 2.7,
                  child: Responsive.isTablet(context)
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                AppText(
                                  text: "Home",
                                  fontSize:
                                      Responsive.isMobile(context) ? 20 : 14,
                                ),
                                !isBottom
                                    ? Container(
                                        height: 5,
                                        width: 5,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.blue,
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                            AppText(
                              text: "Services",
                              color: AppColors.white.withOpacity(.8),
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                            AppText(
                              text: "Schedule",
                              color: AppColors.white.withOpacity(.8),
                              fontWeight: FontWeight.w500,
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                            AppText(
                              text: "Contact us",
                              color: AppColors.white.withOpacity(.8),
                              fontWeight: FontWeight.w500,
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                          ],
                        )
                      : Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                AppText(
                                  text: "Home",
                                  fontSize:
                                      Responsive.isMobile(context) ? 20 : 14,
                                ),
                                !isBottom
                                    ? Container(
                                        height: 5,
                                        width: 5,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: AppColors.blue,
                                        ),
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                            AppText(
                              text: "Services",
                              color: AppColors.white.withOpacity(.8),
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                            AppText(
                              text: "Schedule",
                              color: AppColors.white.withOpacity(.8),
                              fontWeight: FontWeight.w500,
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                            AppText(
                              text: "Contact us",
                              color: AppColors.white.withOpacity(.8),
                              fontWeight: FontWeight.w500,
                              fontSize: Responsive.isMobile(context) ? 20 : 14,
                            ),
                          ],
                        ),
                ),
              if (isBottom)
                SizedBox(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      logoPaths.length,
                      (index) => Expanded(
                        child: SvgPicture.asset(
                          logoPaths[index],
                          height: Responsive.isMobile(context) ? 32 : 18,
                          width: Responsive.isMobile(context) ? 32 : 18,
                        ),
                      ),
                    ),
                  ),
                )
            ],
          );
  }
}

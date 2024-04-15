import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/app_colors.dart';

final List<String> imagePaths = [
  "asset/images/Moderna_logo 1.png",
  "asset/images/Pfizer_(2021) 1.png",
  "asset/images/yellow-logo-zeneca-pharmaceutical-industry-brand 1.png",
  "asset/images/sinovac1336 1.png",
];

final List<String> logoPaths = [
  "asset/icons/youtube.svg",
  "asset/icons/instagram.svg",
  "asset/icons/twitter.svg",
  "asset/icons/facebook.svg",
];
//common padding
const mainPadding = EdgeInsets.symmetric(horizontal: 30, vertical: 20);

//textStyles

var textStyle = const TextStyle(
    color: AppColors.white,
    fontSize: 48,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w800);
TextStyle richTextStyle = TextStyle(
    color: AppColors.black.withOpacity(.6),
    fontSize: 18,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500);

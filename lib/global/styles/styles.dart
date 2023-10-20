import 'package:flutter/material.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/constant/const.dart';

class AppTextStyles {
  AppTextStyles._();

  static const light = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w300,
  );

  static const normal = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w400,
  );

  static const medium = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w500,
  );

  static const semiBold = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w600,
  );

  static const bold = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w700,
  );

  static const black = TextStyle(
    fontFamily: kFontFamily,
    color: AppColors.blackBGColor,
    fontWeight: FontWeight.w900,
  );
}

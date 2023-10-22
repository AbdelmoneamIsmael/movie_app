import 'package:flutter/material.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/styles/styles.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    required this.title,
    super.key,
    this.fontSize = 14,
    this.color = AppColors.blackBGColor,
    this.fontWeight = FontWeight.w600,
    this.thereIsMaxLine = true,
  });
  final String title;
  final double fontSize;
  final Color color;
  final FontWeight? fontWeight;
  final bool? thereIsMaxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      softWrap: false,
      maxLines: thereIsMaxLine! ? 4 : 140,
      overflow: TextOverflow.ellipsis,
      style: AppTextStyles.semiBold.copyWith(
        fontSize: fontSize,
        color: color,
        fontWeight: fontWeight,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/text/small_text.dart';


class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key,
      this.color,
      required this.text,
      this.textColor = Colors.white,
      this.icon,
      required this.onTap});
  final Color? color;
  final String text;
  final Color textColor;
  final Widget? icon;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 243,
      height: 50,
      onPressed: onTap,
      color: color,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          side: BorderSide(color: AppColors.blueColor)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Row(
              children: [
                icon!,
                const SizedBox(
                  width: 5,
                )
              ],
            ),
          CustomText(
            title: text,
            color: textColor,
          ),
        ],
      ),
    );
  }
}

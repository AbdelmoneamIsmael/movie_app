import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/bottom_nav_bar/controller/bottom_nav_controler.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/text/small_text.dart';
import 'package:movie_app/generated/assets.dart';
import 'package:svg_flutter/svg.dart';

class CustomNavBar extends GetView<BottomNavController> {
  CustomNavBar({super.key});
  final BottomNavController intialize = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    final icons = [
      Assets.dashBoardIcon,
      Assets.watchIcon,
      Assets.mediaLibraryIcon,
      Assets.moreIcon
    ];
    final lable = [
      'Dash board',
      'Watch',
      'Media Library',
      'More',
    ];
    return Container(
      height: 70,
      decoration: const BoxDecoration(
        color: AppColors.blackBGColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 20),
        child: Row(
          children: [
            ListView.separated(
              separatorBuilder: (context, index) => const SizedBox(width: 45),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => _barItems(
                  icon: icons[index], title: lable[index], index: index),
              itemCount: 4,
            )
          ],
        ),
      ),
    );
  }

  Widget _barItems(
      {required String title, required String icon, required int index}) {
    return Obx(
      () => GestureDetector(
        onTap: () {
          controller.changeBottomNavValue(index);
        },
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              color: controller.currentTap.value == index
                  ? Colors.white
                  : AppColors.greyColor,
            ),
            const SizedBox(
              height: 5,
            ),
            CustomText(
              title: title,
              color: controller.currentTap.value == index
                  ? Colors.white
                  : AppColors.greyColor,
              fontSize: 10,
            ),
          ],
        ),
      ),
    );
  }
}

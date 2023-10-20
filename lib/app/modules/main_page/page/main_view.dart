import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/bottom_nav_bar/controller/bottom_nav_controler.dart';
import 'package:movie_app/app/modules/bottom_nav_bar/pages/bottom_nav_bar.dart';

class MainView extends StatelessWidget {
  MainView({super.key});
  final BottomNavController intialize = Get.put(BottomNavController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Obx(() => intialize.pages[intialize.currentTap.value]),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: CustomNavBar(),
          ),
        ],
      ),
    );
  }
}

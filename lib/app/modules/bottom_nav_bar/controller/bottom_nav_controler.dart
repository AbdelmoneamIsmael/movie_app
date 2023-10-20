import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/More/Pages/more.dart';
import 'package:movie_app/app/modules/dash_board/Pages/dash_board.dart';
import 'package:movie_app/app/modules/media_library/pages/media_library.dart';
import 'package:movie_app/app/modules/watch/pages/watch.dart';

class BottomNavController extends GetxController {
  RxInt currentTap = 0.obs;
  List<Widget> pages = [
    const DashBoardScreen(),
    WatchScreen(),
    const MediaLibraryScreen(),
    const MoreScreen()
  ];
  void changeBottomNavValue(int value) {
    currentTap.value = value;
  }
}

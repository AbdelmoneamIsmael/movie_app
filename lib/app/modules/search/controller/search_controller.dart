import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/pages/category.dart';
import 'package:movie_app/app/modules/search/pages/result.dart';

class SearchControllerX extends GetxController {
  List<String> category = [
    'Comedies',
    'Crime',
    'Family',
    'Documentaries',
    'Dramas',
    'Fantasy',
    'Holidays',
    'Horror',
    'Sci-Fi',
    'Thriller',
  ];
  RxBool isSearching = false.obs;
  void changeSearchValue() {
    isSearching.value = !isSearching.value;
  }
}

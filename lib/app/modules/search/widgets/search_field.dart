import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/controller/search_controller.dart';
import 'package:movie_app/generated/assets.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:svg_flutter/svg.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, required this.controller});
  final TextEditingController controller;
  final SearchControllerX intialize = Get.put(SearchControllerX());
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        if (value == '') {
          intialize.isSearching.value = false;
        } else {
          intialize.isSearching.value = true;
        }
      },
      controller: controller,
      decoration: InputDecoration(
        fillColor: AppColors.whiteBGColor,
        filled: true,
        contentPadding: const EdgeInsets.all(10),
        hintText: 'TV shows, movies and more',
        border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide.none),
        prefixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.searchIcon),
        ),
        suffixIcon: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(Assets.cancelIcon),
        ),
      ),
    );
  }
}

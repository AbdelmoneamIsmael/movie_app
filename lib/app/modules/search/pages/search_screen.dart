import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/controller/search_controller.dart';
import 'package:movie_app/app/modules/search/pages/category.dart';
import 'package:movie_app/app/modules/search/pages/result.dart';
import 'package:movie_app/app/modules/search/widgets/search_field.dart';
import 'package:movie_app/global/widgets/app_bar.dart';

class SearchScreen extends StatelessWidget {
  SearchScreen({super.key});
  TextEditingController searchController = TextEditingController();
  final SearchControllerX intialize = Get.put(SearchControllerX());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            child: SearchWidget(controller: searchController),
          ),
          // CategoryView(),
          // intialize.view[1],
          GetX<SearchControllerX>(
            builder: (controller) {
              if (intialize.isSearching.value) {
                return ResultView();
              } else {
                return CategoryView();
              }
            },
          )
        ],
      ),
    );
  }
}

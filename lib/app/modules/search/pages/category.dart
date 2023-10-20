import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/controller/search_controller.dart';
import 'package:movie_app/global/text/small_text.dart';

class CategoryView extends StatelessWidget {
  CategoryView({super.key});
  final SearchControllerX intialize = Get.put(SearchControllerX());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          child: GridView.count(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            crossAxisCount: 2,
            padding: const EdgeInsets.all(5),
            mainAxisSpacing: 18,
            crossAxisSpacing: 10,
            childAspectRatio: 1.61,
            children: List.generate(
              intialize.category.length,
              (index) => GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    image: DecorationImage(
                      image: AssetImage(
                          'assets/images/category/Rectangle 2236.png'),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 13.0, bottom: 20),
                          child: SmallText(
                            title: intialize.category[index],
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

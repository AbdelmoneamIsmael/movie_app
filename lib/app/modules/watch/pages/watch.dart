import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/pages/search_screen.dart';
import 'package:movie_app/app/modules/watch/controller/watch_controller.dart';
import 'package:movie_app/app/modules/watch/widgets/movie_card.dart';
import 'package:movie_app/global/text/small_text.dart';
import 'package:movie_app/generated/assets.dart';
import 'package:movie_app/global/widgets/app_bar.dart';
import 'package:svg_flutter/svg.dart';

class WatchScreen extends StatelessWidget {
  WatchScreen({super.key});
  final WatchController controller = Get.put(WatchController());
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _appBar(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) =>
                  index == controller.movieName.length
                      ? const SizedBox(
                          height: 60,
                        )
                      : MovieCard(movieName: controller.movieName[index]),
              itemCount: controller.movieName.length + 1,
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _appBar() {
    return CustomAppBar(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CustomText(
              title: 'Watch',
              fontSize: 16,
            ),
            IconButton(
              icon: SvgPicture.asset(Assets.searchIcon),
              onPressed: () {
                Get.to(SearchScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}

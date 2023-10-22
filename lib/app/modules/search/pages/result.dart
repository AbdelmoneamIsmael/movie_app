import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/search/controller/search_controller.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/text/small_text.dart';
import 'package:svg_flutter/svg.dart';

class ResultView extends StatelessWidget {
  ResultView({super.key});
  final SearchControllerX intialize = Get.put(SearchControllerX());
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          const Align(
            alignment: Alignment.topLeft,
            child: SmallText(title: 'top results '),
          ),
          Container(
            height: 2,
            margin: const EdgeInsets.symmetric(vertical: 20),
            color: const Color.fromARGB(255, 204, 199, 199),
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) => _movieSearchCard(),
            separatorBuilder: (context, index) => const SizedBox(
              height: 20,
            ),
            itemCount: 4,
          ),
        ],
      ),
    );
  }

  Row _movieSearchCard() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              height: 100,
              width: 130,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(12)),
                  image: DecorationImage(
                      image: AssetImage('assets/images/category/search.png'))),
            ),
            const SizedBox(
              width: 20,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SmallText(
                  title: 'TimeLess',
                  fontSize: 16,
                ),
                SmallText(
                  title: 'Fantasy',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: AppColors.greyColor,
                ),
              ],
            ),
          ],
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('assets/icons/svg/more_in_movie_search.svg'),
        ),
      ],
    );
  }
}

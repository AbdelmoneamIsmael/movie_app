import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movie_app/app/modules/movie_details/widgets/tags.dart';
import 'package:movie_app/app/modules/search/widgets/custom_button.dart';
import 'package:movie_app/generated/assets.dart';
import 'package:movie_app/global/constant/color.dart';
import 'package:movie_app/global/text/small_text.dart';
import 'package:svg_flutter/svg.dart';

class MovieDetailsScreen extends StatelessWidget {
  const MovieDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/post/cover.jpg',
                    ),
                    fit: BoxFit.fill),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    _appBar(),
                    Positioned(
                      bottom: 30,
                      right: 66,
                      left: 66,
                      child: Column(
                        children: [
                          _movieName(),
                          _space(),
                          _dateTeket(),
                          _space(),
                          _getTicket(),
                          _space(),
                          _watchTrailer(),
                          _space(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                horizontal: 40,
                vertical: 27,
              ),
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomText(
                    title: 'Genres',
                    fontSize: 16,
                  ),
                  _space(),
                  const Wrap(
                    children: [
                      CategoryTags(
                          color: AppColors.greenColor, category: 'Action'),
                      CategoryTags(
                          color: AppColors.pinkColor, category: 'Thriller'),
                      CategoryTags(
                          color: AppColors.darkBlueColor, category: 'Science'),
                      CategoryTags(
                          color: AppColors.yellow, category: 'Fiction'),
                    ],
                  ),
                  _devider(),
                  const CustomText(
                    title: 'Overview',
                    fontSize: 16,
                  ),
                  _space(),
                  const CustomText(
                    title:
                        'As a collection of history\'s worst tyrants and criminal masterminds gather to plot a war to wipe out millions, one man must race against time to stop them. Discover the origins of the very first independent intelligence agency in The King\'s Man. The Comic Book “The Secret Service” by Mark Millar and Dave Gibbons.',
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container _devider() {
    return Container(
      height: 2,
      margin: const EdgeInsets.symmetric(vertical: 20),
      color: const Color.fromARGB(255, 204, 199, 199),
    );
  }

  SizedBox _space() {
    return const SizedBox(
      height: 10,
    );
  }

  CustomButton _watchTrailer() {
    return CustomButton(
      onTap: () {},
      text: ' Watch Trailer',
      icon: SvgPicture.asset(Assets.playIcon),
      // color: AppColors.blueColor,
    );
  }

  CustomButton _getTicket() {
    return CustomButton(
      onTap: () {},
      text: 'Get Tickets',
      color: AppColors.blueColor,
    );
  }

  CustomText _dateTeket() {
    return CustomText(
      title: 'In theaters december 22, 2021',
      color: Colors.white,
    );
  }

  CustomText _movieName() {
    return CustomText(
      title: 'King\'s Man',
      color: Colors.white,
    );
  }

  Padding _appBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          const CustomText(
            title: 'Watch',
            fontSize: 16,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}

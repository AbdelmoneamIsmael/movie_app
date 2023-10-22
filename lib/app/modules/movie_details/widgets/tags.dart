import 'package:flutter/material.dart';
import 'package:movie_app/global/text/small_text.dart';

class CategoryTags extends StatelessWidget {
  const CategoryTags({super.key, required this.color, required this.category});
  final Color color;
  final String category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(24))),
      child: CustomText(
        title: category,
        color: Colors.white,
      ),
    );
  }
}

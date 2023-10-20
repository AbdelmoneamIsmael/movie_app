import 'package:flutter/material.dart';
import 'package:movie_app/global/text/small_text.dart';

class MovieCard extends StatelessWidget {
  const MovieCard({super.key, required this.movieName});
  final String movieName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        image: DecorationImage(
          image: AssetImage('assets/images/post/post_one.png'),
        ),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20.0, left: 20),
                child: SmallText(
                  title: movieName,
                  color: Colors.white,
                  fontSize: 18,
                ),
              ))
        ],
      ),
    );
  }
}

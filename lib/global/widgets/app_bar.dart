import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 45, right: 20, left: 20, bottom: 20),
      height: 110,
      decoration: const BoxDecoration(color: Colors.white),
      child: child,
    );
  }
}

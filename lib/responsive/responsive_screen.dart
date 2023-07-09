import 'package:flutter/material.dart';
import 'package:uu/utils/dimensions.dart';

class Responsiveness extends StatelessWidget {
  final Widget webScreenLay;
  final Widget mobileScreenLay;
  const Responsiveness(
      {super.key, required this.webScreenLay, required this.mobileScreenLay});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > webScreenSize) {
          //web screen
          return webScreenLay;
        }
        //mobile screen
        return mobileScreenLay;
      },
    );
  }
}

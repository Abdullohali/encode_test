import 'package:flutter/material.dart';

class AppColors {
  static const Color kWhite = Color(0xFFFfffff);
  static const Color kBlack = Color(0xFF000000);
  static const Color kPurple = Color(0xff9461EB);
  static const Color kGrey = Color(0xffCBCBCB);
  static const Color kDeepGrey = Color(0xffF4F4F4);
  static const Color kGreyWhite = Color(0xffD7D7D7);
  static const Color kBlackGrey = Color(0xff898A8D);
  static LinearGradient splashBody = const LinearGradient(
    colors: [
      Color(0xff00D1FF),
      Color(0xff009FC2),
      Color.fromARGB(255, 255, 0, 0)
    ],
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    stops: [0.2, 0.6, 0.9],
    tileMode: TileMode.repeated,
  );
}

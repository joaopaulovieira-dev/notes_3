import 'package:flutter/material.dart';

abstract class AppColors {
  Color get background;
  Color get title;
  Color get titleHomePage;
  Color get subTitleHomePage;
  Color get button;
  Color get textSocialButton;
  Color get subTitle;
  Color get textWhite;

  Color get white;
  Color get black;
}

class AppColorsDefault implements AppColors {
  @override
  Color get background => const Color(0xFFf7f7f7);

  @override
  Color get title => const Color(0xFFffffff);

  @override
  Color get titleHomePage => const Color(0xFFffffff);

  @override
  Color get subTitleHomePage => const Color(0xFFffffff);

  @override
  Color get subTitle => const Color(0xFFffffff);

  @override
  Color get button => const Color(0xFF666666);

  @override
  Color get textSocialButton => const Color(0xFF004785);

  @override
  Color get textWhite => const Color(0xFFffffff);

  @override
  Color get white => const Color(0xFFffffff);

  @override
  Color get black => const Color(0xFF000000);
}

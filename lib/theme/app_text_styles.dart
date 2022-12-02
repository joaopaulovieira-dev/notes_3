import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_3/theme/app_theme.dart';

abstract class ApptextStyles {
  TextStyle get titleSplashPage;
  TextStyle get subTitleSplashPage;
  TextStyle get title;
  TextStyle get titleBold;
  TextStyle get subTitle;
  TextStyle get button;
  TextStyle get titleHomePage;
  TextStyle get subTitleHomePage;
  TextStyle get nomeDrawer;
  TextStyle get emailDrawer;
  TextStyle get textDrawer;
}

class ApptextStylesDefault implements ApptextStyles {
  @override
  TextStyle get titleSplashPage => GoogleFonts.inter(
        fontSize: 48,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.title,
      );

  @override
  TextStyle get subTitleSplashPage => GoogleFonts.inter(
        fontSize: 26,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.subTitle,
      );

  @override
  TextStyle title = GoogleFonts.inter(
    color: AppTheme.colors.white,
    fontSize: 40,
    fontWeight: FontWeight.bold,
  );

  @override
  TextStyle titleBold = GoogleFonts.inter(
    color: AppTheme.colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w600,
  );

  @override
  TextStyle get subTitle => GoogleFonts.inter(
        fontSize: 26,
        fontWeight: FontWeight.w300,
        color: AppTheme.colors.subTitle,
      );

  @override
  TextStyle get button => GoogleFonts.inter(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: AppTheme.colors.textSocialButton,
      );

  @override
  TextStyle get titleHomePage => GoogleFonts.inter(
        fontSize: 35,
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.titleHomePage,
      );

  @override
  TextStyle get subTitleHomePage => GoogleFonts.inter(
        fontSize: 15,
        color: AppTheme.colors.subTitleHomePage,
      );

  @override
  TextStyle get nomeDrawer => GoogleFonts.inter(
        fontWeight: FontWeight.bold,
        color: AppTheme.colors.black,
      );

  @override
  TextStyle get emailDrawer => GoogleFonts.inter(
        color: AppTheme.colors.black,
      );

  @override
  TextStyle get textDrawer => GoogleFonts.inter(
        color: AppTheme.colors.black,
        fontSize: 16,
      );
}

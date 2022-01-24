import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodrecipes/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static TextTheme lightTextTheme = TextTheme(
      bodyText1: GoogleFonts.openSans(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
      headline1: GoogleFonts.openSans(
          color: Colors.black, fontSize: 32, fontWeight: FontWeight.w700),
      headline2: GoogleFonts.openSans(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.openSans(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.openSans(
          color: Colors.black, fontSize: 14, fontWeight: FontWeight.w700),
      headline5: GoogleFonts.openSans(
          color: Colors.black, fontSize: 28, fontWeight: FontWeight.w700),
      subtitle1: GoogleFonts.roboto(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500),
       subtitle2: GoogleFonts.openSans(
          color: Colors.black, fontSize: 13, fontWeight: FontWeight.w500),
      headline6: GoogleFonts.openSans(
          color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700));

  static TextTheme darkTextTheme = TextTheme(
      bodyText1: GoogleFonts.openSans(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w700),
      headline1: GoogleFonts.openSans(
          color: Colors.white, fontSize: 32, fontWeight: FontWeight.w700),
      headline2: GoogleFonts.openSans(
          color: Colors.white, fontSize: 24, fontWeight: FontWeight.w700),
      headline3: GoogleFonts.openSans(
          color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
      headline4: GoogleFonts.openSans(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w600),
      headline5: GoogleFonts.openSans(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.w600),
      headline6: GoogleFonts.openSans(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600));

  static ThemeData lightTheme() => ThemeData(
      primaryColor: Colors.white,
      brightness: Brightness.light,
      primarySwatch: Colors.green,
       appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light,color: KDarkThemePrimaryColor),
      textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.amber, selectionColor: Colors.green),
      textTheme: lightTextTheme);

  static ThemeData darkTheme() =>ThemeData(
        primaryColor: KDarkThemePrimaryColor,
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.dark,color: KDarkThemePrimaryColor),
        textSelectionTheme: const TextSelectionThemeData(
            cursorColor: Colors.amber, selectionColor: Colors.green),
        textTheme: darkTextTheme);
  
}

import 'package:flutter/material.dart';
import 'package:gdg_habit_tracker_app/shared/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

final colorScheme = ColorScheme.fromSeed(seedColor: primaryColor);

final appTheme = ThemeData(
  appBarTheme: const AppBarTheme(backgroundColor: scaffoldBackGroundColor),
  colorScheme: colorScheme,
  scaffoldBackgroundColor: scaffoldBackGroundColor,
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: scaffoldBackGroundColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.grey,
      selectedLabelStyle: TextStyle(color: Colors.black),
      unselectedLabelStyle: TextStyle(color: Colors.black),
      showSelectedLabels: true,
      showUnselectedLabels: true),
  textTheme: TextTheme(
    displaySmall: GoogleFonts.lexend(
      textStyle: const TextStyle(fontSize: 16, color: blackColor),
    ),
    displayMedium: GoogleFonts.lexend(
      textStyle: const TextStyle(fontSize: 16, color: blackColor),
    ),
    displayLarge: GoogleFonts.lexend(
        textStyle: const TextStyle(fontSize: 14, color: blackColor)),
    // Add more styles as needed
  ),
);

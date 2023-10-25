import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ApplicationTheme {
  static Color primaryColor = const Color(0xff30994E);

  static ThemeData theme = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(primary: primaryColor, seedColor: primaryColor),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.inter(
        fontSize: 64,
        fontWeight: FontWeight.bold,
        color: primaryColor,
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      bodyMedium: GoogleFonts.inter(
          fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black),
      labelMedium: GoogleFonts.inter(
        fontSize: 17,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      labelSmall: GoogleFonts.inter(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white,
      ),
    ),
  );
}

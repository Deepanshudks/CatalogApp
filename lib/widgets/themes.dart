import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static Color creamColor = Color.fromARGB(255, 235, 223, 223);
  static Color darkBlueColor = Color(0xFF403b58);

  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      primarySwatch: Colors.green,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(brightness: Brightness.dark);
  }
}

// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  static TextStyle movieTitleStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static TextStyle headlineStyle = GoogleFonts.poppins(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: const Color.fromARGB(255, 233, 233, 233),
  );
  static TextStyle synopsisStyle = GoogleFonts.poppins(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: Colors.grey[600],
  );
  static TextStyle bodyTextStyle = GoogleFonts.poppins(
    fontSize: 18,
    fontWeight: FontWeight.normal,
    color: Colors.white,
  );
  static TextStyle welcomeTextStyle = GoogleFonts.poppins(
    fontSize: 17,
    fontWeight: FontWeight.normal,
    color: const Color.fromARGB(219, 67, 66, 66),
  );
  static TextStyle seunTextStyle = GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.red,
  );
  static BottomNavigationBarThemeData theme = BottomNavigationBarThemeData(
    selectedItemColor: Colors.red,
    unselectedItemColor: Colors.grey[500],
    selectedIconTheme: IconThemeData(
      size: 30,
      color: Colors.red,
    ),
    unselectedIconTheme: IconThemeData(size: 24, color: Colors.grey),
    showSelectedLabels: true,
    showUnselectedLabels: true,
    backgroundColor: Colors.black,
  );
  static InputDecoration textFieldDecoration = InputDecoration(
    filled: true,
    fillColor: const Color.fromARGB(255, 0, 0, 0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(2),
      borderSide: BorderSide(
        color: const Color.fromARGB(255, 255, 255, 255),
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: const Color(0xFFFFFFFF), width: 2),
    ),
    contentPadding: EdgeInsets.symmetric(horizontal: 18, vertical: 12),
    hintStyle: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.normal,
      color: Colors.white,
    ),
  );

  static ButtonStyle getButtonStyle({
    Color? backgroundColor,
    Color? textColor,
    double fontSize = 16,
  }) {
    return ElevatedButton.styleFrom(
      foregroundColor: textColor ?? Colors.white,
      backgroundColor:
          backgroundColor ??
          const Color.fromARGB(255, 18, 19, 19),
      textStyle: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 16,
      ), // فضای داخلی دکمه
      minimumSize: Size(double.infinity, 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  // استایل‌های پیش‌فرض برای دکمه‌ها
  static ButtonStyle blueButtonStyle = getButtonStyle(
    backgroundColor: Colors.blue,
    textColor: Colors.white,
  );
  static ButtonStyle redButtonStyle = getButtonStyle(
    backgroundColor: const Color.fromARGB(255, 212, 15, 15),
    textColor: Colors.white,
    fontSize: 18,
  );
  static ButtonStyle blackButtonStyle = getButtonStyle(
    backgroundColor: const Color.fromARGB(255, 8, 7, 7),
    textColor: Colors.white,
  );

  static var headlineWhiteStyle;

  static var appBarTheme;
}

class AppTheme {
  // AppBarTheme
  static AppBarTheme appBarThemeDark = AppBarTheme(
    backgroundColor: Colors.black,
    iconTheme: const IconThemeData(
      color: Color(0xFF8A0A0A),
    ),
    actionsIconTheme: const IconThemeData(
      color: Colors.white,
      size: 30,
    ),
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 30,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  );

  // AppBarTheme
  static AppBarTheme appBarThemeLight = AppBarTheme(
    backgroundColor: Colors.white,
    iconTheme: const IconThemeData(color: Colors.red),
    actionsIconTheme: const IconThemeData(
      color: Colors.red,
      size: 18,
    ),
    titleTextStyle: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    elevation: 0,
  );
}

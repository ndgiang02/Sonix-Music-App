import 'package:flutter/material.dart';

ThemeData themeData(BuildContext context) {
  return ThemeData(
    fontFamily: 'SF-Pro-Display',
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFFA8D64A),
      primary: const Color(0xFFA8D64A),
      error: const Color(0xFFE21221).withValues(alpha: 0.7),
    ),
    useMaterial3: true,
    textTheme: textTheme(),
    dividerTheme: const DividerThemeData(color: Color(0xFFEEEEEE)),
    scaffoldBackgroundColor: Color(0xFF0D0D0D).withValues(alpha: 0.5),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.transparent,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFFA8D64A),
      unselectedItemColor: Color(0xFFEEEEEE),
      unselectedLabelStyle: Theme.of(
        context,
      ).textTheme.titleMedium!.copyWith(color: Color(0xfff1f1f1), fontSize: 10),
      selectedLabelStyle: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: const Color(0xFF0D0D0D),
        fontSize: 10,
      ),
    ),
    //inputDecorationTheme: inputDecorationTheme(),
  );
}

InputDecorationTheme inputDecorationTheme() {
  return InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
    fillColor: Color(0xffFAFAFA),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
      gapPadding: 0,
    ),
    disabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
      gapPadding: 0,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
      gapPadding: 0,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: const BorderSide(width: 0, color: Color(0xffFAFAFA)),
      gapPadding: 0,
    ),
    filled: true,
    hintStyle: const TextStyle(
      fontSize: 14,
      color: Color(0xFF9E9E9E),
      fontWeight: FontWeight.normal,
    ),
  );
}

TextTheme textTheme() {
  return const TextTheme(
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displayMedium: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),
    displaySmall: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black,
    ),

    // Body text styles
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black87, height: 1.5),
    bodyMedium: TextStyle(fontSize: 14, color: Colors.black87, height: 1.5),
    bodySmall: TextStyle(fontSize: 12, color: Colors.black54, height: 1.5),

    // Title styles
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
    titleMedium: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    titleSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),

    // Label styles
    labelLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelMedium: TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
    labelSmall: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      letterSpacing: 0.5,
    ),
  );
}

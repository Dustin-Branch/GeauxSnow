import 'package:flutter/material.dart';

class StandTheme {
  final Color primaryColor;
  final Color secondaryColor;
  final Color backgroundColor;
  final Color appBarColor;
  final TextStyle headlineStyle;
  final TextStyle bodyStyle;

  // add more theme properties as needed

  StandTheme({
    required this.primaryColor,
    required this.secondaryColor,
    required this.backgroundColor,
    required this.appBarColor,
    required this.headlineStyle,
    required this.bodyStyle,
  });
}

//TODO: this will eventually be deleted and replaced with an API call that will fetch StandTheme data
ThemeData getThemeDataForStand(int? standId) {
  switch (standId) {
    case 1:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        scaffoldBackgroundColor: Colors.blue.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.blue.shade800,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.orange.shade700,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.blue.shade800),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.blue.shade600),
          bodySmall: TextStyle(fontSize: 14, color: Colors.blue.shade400),
        ),
      );
    case 2:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        scaffoldBackgroundColor: Colors.green.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade900,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.green.shade800,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.pink.shade700,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.green.shade800),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.green.shade600),
          bodySmall: TextStyle(fontSize: 14, color: Colors.green.shade400),
        ),
      );
    case 3:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        scaffoldBackgroundColor: Colors.purple.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade900,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.purple.shade800,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.yellow.shade800,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.purple.shade800),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.purple.shade600),
          bodySmall: TextStyle(fontSize: 14, color: Colors.purple.shade400),
        ),
      );
    case 4:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red),
        scaffoldBackgroundColor: Colors.red.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.red.shade800,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.teal.shade700,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.red.shade800),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.red.shade600),
          bodySmall: TextStyle(fontSize: 14, color: Colors.red.shade400),
        ),
      );
    case 5:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        scaffoldBackgroundColor: Colors.deepOrange.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.deepOrange.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange.shade900,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange.shade900,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.deepOrange.shade800,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.indigo.shade700,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.deepOrange.shade800),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.deepOrange.shade600,
          ),
          bodySmall: TextStyle(fontSize: 14, color: Colors.deepOrange.shade400),
        ),
      );
    default:
      return ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.grey.shade700,
          titleTextStyle: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
        ),
        textTheme: TextTheme(
          headlineLarge: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          headlineMedium: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: Colors.black54,
          ),
          headlineSmall: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.blueGrey,
          ),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
          bodySmall: TextStyle(fontSize: 14, color: Colors.grey),
        ),
      );
  }
}

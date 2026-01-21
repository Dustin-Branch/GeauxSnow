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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.blue.shade900,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.blue.shade800),
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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.green.shade900,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.green.shade800),
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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.purple.shade900,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.purple.shade800),
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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.red.shade900,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.red.shade800),
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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.deepOrange.shade900,
          ),
          bodyMedium: TextStyle(
            fontSize: 16,
            color: Colors.deepOrange.shade800,
          ),
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
          headlineMedium: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          bodyMedium: TextStyle(fontSize: 16, color: Colors.black54),
        ),
      );
  }
}

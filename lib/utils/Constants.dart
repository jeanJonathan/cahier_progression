import 'package:flutter/material.dart';

class Constants {
  static const appName = 'My App';
  static const appVersion = '1.0.0';

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );

  static const List<String> sports = const [
    'Kitesurf',
    'Wing foil',
    'Surf',
  ];

  static const List<String> noteCategories = const [
    'Chapitre 1',
    'Chapitre 2',
    'Chapitre 3',
  ];
}

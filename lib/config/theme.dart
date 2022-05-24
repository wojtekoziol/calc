import 'package:calc/config/constants.dart';
import 'package:flutter/material.dart';

final kLightTheme = ThemeData(
  scaffoldBackgroundColor: kWhiteLight,
  colorScheme: const ColorScheme.light().copyWith(
    secondary: kWhiteDark,
  ),
  textTheme: const TextTheme(
    headline3: TextStyle(
      color: kBlackDark,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: kBlackDark,
      fontWeight: FontWeight.bold,
    ),
  ),
);

final kDarkTheme = ThemeData(
  scaffoldBackgroundColor: kBlackDark,
  colorScheme: const ColorScheme.dark().copyWith(
    secondary: kBlackLight,
  ),
  textTheme: const TextTheme(
    headline3: TextStyle(
      color: kWhiteDark,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      color: kWhiteDark,
      fontWeight: FontWeight.bold,
    ),
  ),
);

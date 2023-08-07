import 'package:crworkout_tracker/config/theme/color_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {

  final int selectedColor;

  AppTheme({
    required this.selectedColor
  }) :
    assert(selectedColor >= 0, 'The color should be equal or greater than 0'),
    assert(selectedColor < colorList.length, 'The color should be a value between 0 and ${colorList.length - 1}')
  ;

  AppBarTheme getAppBarTheme() => const AppBarTheme(
    centerTitle: true
  );

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    appBarTheme: getAppBarTheme(),
    colorSchemeSeed: colorList[selectedColor],
    brightness: Brightness.dark,
  );
}
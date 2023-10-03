import 'package:flutter/material.dart';

const Color customColor = Color.fromRGBO(200, 23, 120, 0.612);
List<Color> colorThemes = [
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < colorThemes.length,
            'Colors must be between 0 and 7');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, colorSchemeSeed: colorThemes[selectedColor]);
  }
}

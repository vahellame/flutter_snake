import 'package:flutter/material.dart';
import 'package:flutter_snake/models/app_theme_model.dart';

class AppThemeController {
  static Map<String, Color> dataToView(AppThemeModel data) {
    Map<String, Color> appTheme;

    switch (data) {
      case AppThemeModel.black:
        appTheme['first_color'] = Colors.black;
        appTheme['second_color'] = Colors.blue;
        appTheme['food_color'] = Colors.yellow;
        break;
      case AppThemeModel.white:
        appTheme['first_color'] = Colors.white;
        appTheme['second_color'] = Colors.green;
        appTheme['food_color'] = Colors.yellow;
        break;
    }

    return appTheme;
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_snake/models/app_theme_model.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:convert';
import 'dart:io';

class AppSettings with ChangeNotifier {
  // Values
  Map _settings;
  AppThemeModel _theme;

  // Getters
  AppThemeModel get theme => _theme;
  Future<File> get _localFile async {
    final directory = await getApplicationDocumentsDirectory();
    return Future.value(File('${directory.path}/settings.json'));
  }

  // Functions
  Future<void> init() async {
    print('settings init start');

    final file = await _localFile;
    if (file.existsSync()) {
      _settings = await readSettings();
      switch (_settings['theme']) {
        case 'black':
          _theme = AppThemeModel.black;
          break;
        case 'white':
          _theme = AppThemeModel.white;
          break;
      }
    } else {
      Map defaultSettings = {
        'theme': 'black',
      };
      writeSettings(defaultSettings);
      _theme = AppThemeModel.black;
      _settings = defaultSettings;
    }

    await Future.delayed(Duration(seconds: 3));
  }

  Future<Map> readSettings() async {
    try {
      final file = await _localFile;

      // Read the file
      String contents = await file.readAsString();
      return Future.value(json.decode(contents));
    } catch (e) {
      print('e = $e');
      return null;
    }
  }

  Future<File> writeSettings(Map settings) async {
    final file = await _localFile;

    // Write the file
    String jsonSettings = json.encode(settings);
    return file.writeAsString(jsonSettings);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_snake/pages/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_snake/core/snake.dart';
import 'core/app_settings.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<Snake>(create: (context) => Snake()),
        ChangeNotifierProvider<AppSettings>(create: (context) => AppSettings()),
      ],
      child: App(),
    ),
  );
}

class App extends StatelessWidget {
  const App();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake/core/app_settings.dart';
import 'package:flutter_snake/pages/game_page.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatelessWidget {
  const MenuPage();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);

    // final theme = context.watch<AppSettings>().theme;
    // print(theme);

    return Scaffold(
      body: ListView(
        children: [
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(
          Icons.add,
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => GamePage(),
            ),
          );
        },
      ),
      backgroundColor: Colors.green,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_snake/core/snake.dart';
import 'package:flutter_snake/widgets/buttons/button_downward.dart';
import 'package:flutter_snake/widgets/buttons/button_left.dart';
import 'package:flutter_snake/widgets/buttons/button_pause.dart';
import 'package:flutter_snake/widgets/buttons/button_right.dart';
import 'package:flutter_snake/widgets/buttons/button_upward.dart';
import 'package:flutter_snake/widgets/scoreboard.dart';
import 'package:flutter_snake/widgets/snake_board.dart';
import 'package:provider/provider.dart';

class GamePage extends StatelessWidget {
  const GamePage();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          SnakeBoard(),
          ScoreBoard(),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ButtonLeft(),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: ButtonUpward(),
                      ),
                      Expanded(
                        child: ButtonPause(),
                      ),
                      Expanded(
                        child: ButtonDownward(),
                      ),
                    ],
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                  ),
                ),
                Expanded(
                  child: ButtonRight(),
                ),
              ],
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
            ),
          ),
        ],
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }
}

// floatingActionButton: FloatingActionButton(
//     onPressed: () async => context.read<Snake>().play(),
//     child: const Icon(Icons.add)),

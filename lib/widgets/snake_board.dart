import 'package:flutter/material.dart';
import 'package:flutter_snake/controllers/snake_board_cell_controller.dart';
import 'package:provider/provider.dart';

import 'package:flutter_snake/core/snake.dart';
import 'package:flutter_snake/widgets/snake_board_cell.dart';

class SnakeBoard extends StatelessWidget {
  const SnakeBoard();

  @override
  Widget build(BuildContext context) {
    const sizeX = Snake.sizeX;
    const sizeY = Snake.sizeY;

    final board = context.watch<Snake>().board;
    print(board);

    return AspectRatio(
        aspectRatio: sizeX / sizeY,
        child: Column(
          children: List.generate(sizeY, (i) {
            return Expanded(
              child: Row(
                children: List.generate(sizeX, (j) {
                  final view = SnakeBoardCellController.dataToView(board[i][j]);
                  return Expanded(child: SnakeBoardCell(view));
                }),
              ),
            );
          }),
        ));
  }
}

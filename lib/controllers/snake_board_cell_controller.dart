import 'package:flutter/material.dart';
import 'package:flutter_snake/models/snake_board_cell_model.dart';

class SnakeBoardCellController {
  static BoxDecoration dataToView(SnakeBoardCellModel data) {
    switch (data) {
      case SnakeBoardCellModel.empty:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.snake_head:
        return const BoxDecoration(
          color: Colors.blue,
          border: Border(
            bottom: BorderSide(color: Colors.blue),
            top: BorderSide(color: Colors.blue),
            left: BorderSide(color: Colors.blue),
            right: BorderSide(color: Colors.blue),
          ),
        );
      case SnakeBoardCellModel.snake_body:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.blue),
            top: BorderSide(color: Colors.blue),
            left: BorderSide(color: Colors.blue),
            right: BorderSide(color: Colors.blue),
          ),
        );
      case SnakeBoardCellModel.food:
        return const BoxDecoration(
          color: Colors.yellow,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.top_left_corner:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.blue),
            left: BorderSide(color: Colors.blue),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.top_right_corner:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.blue),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.blue),
          ),
        );
      case SnakeBoardCellModel.bottom_left_corner:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.blue),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.blue),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.bottom_right_corner:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.blue),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.blue),
          ),
        );
      case SnakeBoardCellModel.top_side:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.blue),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.bottom_side:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.blue),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.left_side:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.blue),
            right: BorderSide(color: Colors.black),
          ),
        );
      case SnakeBoardCellModel.right_side:
        return const BoxDecoration(
          color: Colors.black,
          border: Border(
            bottom: BorderSide(color: Colors.black),
            top: BorderSide(color: Colors.black),
            left: BorderSide(color: Colors.black),
            right: BorderSide(color: Colors.blue),
          ),
        );
    }
    return const BoxDecoration(color: Colors.red);
  }
}

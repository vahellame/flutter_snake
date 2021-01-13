import 'package:flutter/material.dart';
import 'package:flutter_snake/models/snake_board_cell_model.dart';
import 'package:flutter_snake/models/snake_condition_model.dart';
import 'package:flutter_snake/models/snake_direction_model.dart';

class Snake with ChangeNotifier {
  // Empty constructor to run 'init' function
  Snake() {
    init();
  }

  // Static variables
  static const sizeY = 45;
  static const sizeX = 30;

  // Values
  List<List<SnakeBoardCellModel>> _board;
  List<List<int>> _snake;
  SnakeDirectionModel _direction;
  SnakeConditionModel _condition;
  int _score;

  // Getters
  int get score => _score;
  SnakeDirectionModel get direction => _direction;
  SnakeConditionModel get condition => _condition;
  List<List<SnakeBoardCellModel>> get board => _board;

  // Functions
  void init() {
    _board = _createEmptyBoard();
    _snake = _createStartSnake();
    _direction = SnakeDirectionModel.right;
    _condition = SnakeConditionModel.alive;
    setScore(0);

    _placeSnakeOnBoard();

    print('snake init done');
  }

  List<List<SnakeBoardCellModel>> _createEmptyBoard() {
    List<List<SnakeBoardCellModel>> snakeBoard =
        List.generate(sizeY, (i) => List(sizeX));

    for (var i = 1; i < sizeY - 1; i++) {
      for (var j = 1; j < sizeX - 1; j++) {
        snakeBoard[i][j] = SnakeBoardCellModel.empty;
      }
    }

    snakeBoard[0][0] = SnakeBoardCellModel.top_left_corner;
    snakeBoard[0][sizeX - 1] = SnakeBoardCellModel.top_right_corner;
    snakeBoard[sizeY - 1][0] = SnakeBoardCellModel.bottom_left_corner;
    snakeBoard[sizeY - 1][sizeX - 1] = SnakeBoardCellModel.bottom_right_corner;

    for (var i = 1; i < sizeY - 1; i++) {
      snakeBoard[i][0] = SnakeBoardCellModel.left_side;
      snakeBoard[i][sizeX - 1] = SnakeBoardCellModel.right_side;
    }

    for (var j = 1; j < sizeX - 1; j++) {
      snakeBoard[0][j] = SnakeBoardCellModel.top_side;
      snakeBoard[sizeY - 1][j] = SnakeBoardCellModel.bottom_side;
    }
    return snakeBoard;
  }

  List<List<int>> _createStartSnake() {
    List<List<int>> startSnake = List.generate(5, (i) => List(2));
    for (int i = 0; i < 5; i++) {
      startSnake[i][0] = 0 + 5; // y coordinate
      startSnake[i][1] = i + 5; // x coordinate
    }
    startSnake = startSnake.reversed.toList();
    return startSnake;
  }

  void _placeSnakeOnBoard() {
    // TODO: Rewrite without recreating full board
    _board = _createEmptyBoard();

    int yHead = _snake[0][0];
    int xHead = _snake[0][1];

    _board[yHead][xHead] = SnakeBoardCellModel.snake_head;
    for (int i = 1; i < _snake.length; i++) {
      int y = _snake[i][0];
      int x = _snake[i][1];

      _board[y][x] = SnakeBoardCellModel.snake_body;
    }

  }

  void setScore(int sc) {
    _score = sc;
  }

  void makeNextMove() {
    int snakeHeadPositionY = _snake[0][0];
    int snakeHeadPositionX = _snake[0][1];

    switch (_direction) {
      case SnakeDirectionModel.up:
        // TODO: Handle this case.
        break;
      case SnakeDirectionModel.down:
        // TODO: Handle this case.
        break;
      case SnakeDirectionModel.right:
        _snake.insert(0, [snakeHeadPositionY, snakeHeadPositionX + 1]);
        break;
      case SnakeDirectionModel.left:
        // TODO: Handle this case.
        break;
    }

    _snake.removeAt(_snake.length - 1);

  }

  Future<void> play() async {
    for (int i = 0; i < 5; i++) {
      if (_condition == SnakeConditionModel.alive) {
        if (_direction == SnakeDirectionModel.right) {
          await Future.delayed(const Duration(milliseconds: 300));
          makeNextMove();
          _placeSnakeOnBoard();
        }
      }
      _board = _board;
      print(i);
      
      notifyListeners();
    }
  }
}

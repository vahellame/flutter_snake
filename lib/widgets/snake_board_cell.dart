import 'package:flutter/material.dart';
class SnakeBoardCell extends StatelessWidget {
  const SnakeBoardCell(this._boxDecoration);

  final _boxDecoration;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: _boxDecoration);
  }
}

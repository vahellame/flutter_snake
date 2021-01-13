import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Score: 42',
        style: TextStyle(
          color: Colors.blue,
          fontSize: 21,
        ),
      ),
      decoration: BoxDecoration(
        border: Border.all(),
      ),
    );
  }
}

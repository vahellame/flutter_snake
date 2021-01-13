import 'package:flutter/material.dart';

class ScoreBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Text(
        'Score: ',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 21,
          color: Colors.blue,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
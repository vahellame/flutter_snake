import 'package:flutter/material.dart';

class ButtonLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Icon(
          Icons.keyboard_arrow_left,
          color: Colors.blue,
        ),
        onTap: () {print('left');},
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
      ),
    );
  }
}

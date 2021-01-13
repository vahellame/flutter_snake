import 'package:flutter/material.dart';

class ButtonUpward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Icon(
          Icons.keyboard_arrow_up,
          color: Colors.blue,
        ),
        onTap: () {print('upward');},
        onDoubleTap: () {print('upward double');},
        onLongPress: () {print('upward long press');},
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
      ),
    );
  }
}

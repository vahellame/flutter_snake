import 'package:flutter/material.dart';

class ButtonDownward extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Icon(
          Icons.keyboard_arrow_down,
          color: Colors.blue,
        ),
        onTap: () {print('downward');},
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
      ),
    );
  }
}

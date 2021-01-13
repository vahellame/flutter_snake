import 'package:flutter/material.dart';

class ButtonPause extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        child: Icon(
          Icons.stop_circle,
          color: Colors.blue,
        ),
        onTap: () {print('pause');},
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
      ),
    );
  }
}

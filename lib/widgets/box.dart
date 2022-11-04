import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        height: 122,
        width: 122,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.pinkAccent[400],
        ),
      ),
    );
  }
}

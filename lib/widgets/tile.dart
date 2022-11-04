import 'package:flutter/material.dart';

class MyTile extends StatelessWidget {
  MyTile({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21), color: Colors.pink[200]),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}

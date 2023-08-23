import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  final String child;

  const MyCircle({required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey[350],
        ),
        child: ClipOval(
            child: Image.asset(
          child,
          fit: BoxFit.cover,
        )),
      ),
    );
  }
}

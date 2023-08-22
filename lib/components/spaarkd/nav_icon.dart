import 'package:flutter/material.dart';

class NavIcon extends StatelessWidget {
  final Icon icon;
  final String name;

  const NavIcon({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(
          name,
          style: TextStyle(fontSize: 12),
        )
      ],
    );
  }
}

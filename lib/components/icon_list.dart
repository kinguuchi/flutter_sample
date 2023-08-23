import 'package:flutter/material.dart';

class IconList extends StatelessWidget {

  final Icon icon;

  const IconList({ required this.icon });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Icon(icon.icon, size: 70,),
    );
  }
}
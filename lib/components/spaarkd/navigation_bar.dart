import 'package:flutter/material.dart';
import 'package:login/components/spaarkd/nav_icon.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        NavIcon(icon: Icon(Icons.home_filled), name: 'Home')
      ],
    );
  }
}
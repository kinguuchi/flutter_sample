import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/spaarkd.dart';
import 'package:login/pages/widget_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Spaarkd(),
    );
  }
}


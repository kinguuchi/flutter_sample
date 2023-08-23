import 'package:flutter/material.dart';

import '../components/posts/index.dart';

class PageViewPage extends StatelessWidget {

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _controller,
        scrollDirection: Axis.vertical,
        children: [
          MyPost1(),
          MyPost2(),
          MyPost3(),
          MyPost4(),
          MyPost5(),
          MyPost6(),
        ],
      ),
    );
  }
}
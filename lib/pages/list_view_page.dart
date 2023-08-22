import 'package:flutter/material.dart';
import 'package:login/components/circle_tile.dart';
import 'package:login/components/square_tiles.dart';

class ListPage extends StatelessWidget {
  
  final List _posts = [
    'Post 1',
    'Post 2',
    'Post 3',
    'Post 4',
    'Post 5',
  ];

  final List _stories = [
    'Story 1',
    'Story 2',
    'Story 3',
    'Story 4',
    'Story 5',
    'Story 6',
    'Story 7',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: _stories.length,
                itemBuilder: ((context, index) {
                  return MyCircle(child: _stories[index]);
                }),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _posts.length,
              itemBuilder: ((context, index) {
                return MySquare(child: _posts[index],);
              })
            ),
          ),
        ],
      ),
      );
  }
}

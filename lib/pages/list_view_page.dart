import 'package:flutter/material.dart';
import 'package:login/components/circle_tile.dart';
import 'package:login/components/square_tiles.dart';
import 'package:login/data/data.dart';

class ListPage extends StatelessWidget {
  final _posts = UserPosts;
  final _stories = UserStories;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 110,
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _stories.length,
                    itemBuilder: ((context, index) {
                      return MyCircle(child: _stories[index]);
                    }),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _posts.length,
                itemBuilder: ((context, index) {
                  return MySquare(post: _posts[index]);
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

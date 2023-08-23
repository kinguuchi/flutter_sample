import 'package:flutter/material.dart';
import 'package:login/components/icon_list.dart';
import 'package:login/types/types.dart';

import '../data/data.dart';

class MySquare extends StatefulWidget {
  final Posts post;

  MySquare({required this.post});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  bool isClicked = true;
  final _icons = SocialIcons;

  void handleHeartIcon() {
    setState(() {
      isClicked = isClicked == false ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blueGrey[50],
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Row(
                children: [
                  Text(
                    widget.post.name.firstName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    widget.post.name.lastName,
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(Icons.south_america)
                ],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    widget.post.text ?? '',
                    style: TextStyle(fontSize: 15),
                  ),
                ),
              ],
            ),
            if (widget.post.image != null)
              Image.asset(
                widget.post.image!,
                fit: BoxFit.fitWidth,
                height: 200,
                width: 350,
              ),
            Padding(
              padding: const EdgeInsets.only(left: 40, right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.heart_broken, size: 35,),
                  IconButton(
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onPressed: handleHeartIcon,
                      icon: isClicked
                          ? Icon(
                              Icons.heart_broken,
                              size: 35,
                            )
                          : Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 35,
                            )),
                  Icon(
                    Icons.comment,
                    size: 35,
                  ),
                  IconButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (BuildContext context) {
                              return Container(
                                height: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                  color: Colors.grey[350],
                                ),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: _icons.length,
                                  itemBuilder: (context, index) {
                                    return IconList(icon: _icons[index]);
                                  },
                                ),
                              );
                            });
                      },
                      icon: Icon(
                        Icons.reply,
                        size: 35,
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login/types/types.dart';

class MySquare extends StatefulWidget {
  final Posts post;

  MySquare({required this.post});

  @override
  State<MySquare> createState() => _MySquareState();
}

class _MySquareState extends State<MySquare> {
  bool isClicked = true;

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
        height: 400,
        color: Colors.blueGrey[50],
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
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  color: Colors.white,
                  child: Center(
                      child: Text(
                    widget.post.text ?? '',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 60, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Icon(Icons.heart_broken, size: 35,),
                  IconButton(
                      onPressed: handleHeartIcon,
                      icon: isClicked
                          ? Icon(
                              Icons.heart_broken,
                              size: 35,
                            )
                          : Icon(
                              Icons.heart_broken,
                              color: Colors.red,
                              size: 35,
                            )),
                  Icon(
                    Icons.comment,
                    size: 35,
                  ),
                  Icon(
                    Icons.share,
                    size: 35,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

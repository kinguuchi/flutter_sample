import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 15,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), 
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              width: 50,
              color: Colors.blueGrey,
            ),
          );
        })
      ),
    );
  }
}
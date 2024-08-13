// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Podcast extends StatelessWidget {
  const Podcast({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Podcast'),
      ),
      body: Column(
        children: [
          Table(
            border: TableBorder.all(),
            children: [

              TableRow(children: [
                Text('SONG'),
              ]),
            ],
          ),
          Padding(padding: EdgeInsets.all(30.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                iconSize: 50.0,
                onPressed: () {},
                icon: Icon(Icons.play_arrow),
              ),
              IconButton(
                iconSize: 50.0,
                onPressed: () {},
                icon: Icon(Icons.pause),
              ),
              IconButton(
                iconSize: 50.0,
                onPressed: () {},
                icon: Icon(Icons.stop),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}

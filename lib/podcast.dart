// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Podcast extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        

      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Podcast Player'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Column(
        
        children: [
        
          Container(
            margin: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Image.network(
                  'https://s1.elespanol.com/2020/01/20/como/los_podcast_de_el_espanol-marketing-radio_461216627_142878551_1706x1280.jpg', // Cambia esta URL por la de tu imagen
                  height: 200,
                  width: 200,
                ),
                SizedBox(height: 16.0),
                Text(
                  'Título del Podcast',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Descripción breve del podcast.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.skip_previous),
                iconSize: 36.0,
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.play_arrow),
                iconSize: 36.0,
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.pause),
                iconSize: 36.0,
                onPressed: () {
                },
              ),
              IconButton(
                icon: Icon(Icons.skip_next),
                iconSize: 36.0,
                onPressed: () {
                },
              ),
            ],
          ),
          SizedBox(height: 20.0),
        ],
      ),
      )
    );

  }
}
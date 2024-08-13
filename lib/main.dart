// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black54, title: Text('Hello, World!')),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black54,
        ),
        body: Center(child: Text('Hello, World!')),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:examen_programacionv/lista_de_tareas.dart';
import 'package:examen_programacionv/noticias.dart';
import 'package:examen_programacionv/podcast.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( Podcast());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.black54, title: Text('Bienvenido')),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Builder(
                builder: (context) => IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Noticias()),
                    );
                  },
                  icon: Icon(size: 30.0, Icons.newspaper),
                  color: Colors.white,
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              IconButton(
                onPressed: () {},
                icon: Icon(size: 30.0, Icons.attach_money),
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              IconButton(
                onPressed: () {},
                icon: Icon(size: 30.0, Icons.task_sharp),
                color: Colors.white,
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              IconButton(
                onPressed: () {},
                icon: Icon(size: 30.0, Icons.podcasts),
                color: Colors.white,
              ),
            ],
          ),
          color: Colors.black54,
        ),
        body: Center(
          child: Text(
            'Por favor elija alguna de las múltiples opciones que tenemos para ti :)',
            style: TextStyle(fontSize: 15.0),
          ),
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  const Noticias({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Noticias'),
          ),
          body: Column(
            children: [
              Card(
                color: Colors.black45,
                shadowColor: Colors.black,
                child: ListTile(
                  trailing: Image.network(
                      "https://www.elheraldo.hn/binrepository/507x380/0c0/500d380/none/45933/JIFA/casa-s_8257092_20240812154540.jpg"),
                  leading: Text('NOVEDAD!'),
                  title: Text(
                      'Cinco puntos para entender fallo de la Sala Constitucional sobre las ZEDE'),
                ),
              ),
              Card(
                color: Colors.blueGrey,
                child: ListTile(
                  leading: Text("11/8/24"),
                  title: Text(
                      'BCH pide a empresarios que diversifiquen exportaciones'),
                  trailing: Image.network(
                      'https://cdn.latribuna.hn/wp-content/uploads/2024/08/bch-pide-a-empresarios-que-diversifiquen-exportaciones-1.jpg'),
                ),
              ),
            ],
          )),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Noticias extends StatelessWidget {
  const Noticias({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Noticias'),
          ),
          body: Column(
            children: [
              Card(
                color: Colors.black45,
                shadowColor: Colors.black,
                child: ListTile(
                  trailing: Image.network(
                      "https://ceutec.hn/wp-content/uploads/2024/07/01-como-hacer-un-cuadro-sinoptico.jpg"),
                  leading: Text('NOVEDAD!'),
                  title: Text(
                      '¿Cómo hacer un cuadro sinóptico?'),
                ),
              ),
              Card(
                color: Colors.blueGrey,
                child: ListTile(
                  leading: Text("12/8/24"),
                  title: Text(
                      '¿Conocés los lenguajes de programación?'),
                  trailing: Image.network(
                      'https://ceutec.hn/wp-content/uploads/2024/07/cuales-son-lenguajes-programacion.png'),
                ),
              ),
              Card(
                color: Colors.blue,
                child: ListTile(
                  leading: Text("11/8/24"),
                  title: Text(
                      'En presupuesto del CNE, Sefin dará dictamen una vez Congreso lo requiera'),
                  trailing: Image.network(
                      'https://cdn.latribuna.hn/wp-content/uploads/2024/08/Marlon-Ochoa-la-tribuna.jpg'),
                ),
              ),
              Card(
                color: Colors.redAccent,
                child: ListTile(
                  leading: Text("10/8/24"),
                  title: Text(
                      '100 jóvenes más se suman a la familia CEUTEC y UNITEC'),
                  trailing: Image.network(
                      'https://ceutec.hn/wp-content/uploads/2024/07/6_becas_fundacion_nasser_unitec_0001-scaled.jpg'),
                ),
              ),
            ],
          )),
    );
  }
}

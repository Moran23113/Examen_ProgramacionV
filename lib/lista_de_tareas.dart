import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaDeTareas(),
    );
  }
}

class ListaDeTareas extends StatefulWidget {
  @override
  _ListaDeTareasState createState() => _ListaDeTareasState();
}

class _ListaDeTareasState extends State<ListaDeTareas> {
  // Lista para almacenar las tareas
  final List<Map<String, String>> _tareas = [];

  void _agregarTarea(String tarea, String subtarea) {
    setState(() {
      _tareas.add({'tarea': tarea, 'subtarea': subtarea});
    });
  }

  void _mostrarCuadroDeDialogo() {
    showDialog(
      context: context,
      builder: (ctx) {
        String tarea = '';
        String subtarea = '';

        return AlertDialog(
          title: Text('Agregar Tarea'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Tarea'),
                onChanged: (value) {
                  tarea = value;
                },
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Subtarea'),
                onChanged: (value) {
                  subtarea = value;
                },
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (tarea.isNotEmpty && subtarea.isNotEmpty) {
                  _agregarTarea(tarea, subtarea);
                  Navigator.of(ctx).pop();
                }
              },
              child: Text('Agregar'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text('Cancelar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Text('Lista de Tareas'),
      ),
      body: ListView.builder(
        itemCount: _tareas.length,
        itemBuilder: (ctx, index) {
          return Card(
            child: ListTile(
              title: Text(_tareas[index]['tarea']!),
              subtitle: Text(_tareas[index]['subtarea']!),
              trailing: Icon(Icons.check),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _mostrarCuadroDeDialogo,
        child: Icon(Icons.add),
      ),
    );
  }
}

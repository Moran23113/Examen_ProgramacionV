// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CambioDeMoneda extends StatefulWidget {
  const CambioDeMoneda({super.key});

  @override
  State<CambioDeMoneda> createState() => _CambioDeMonedaState();
}

class _CambioDeMonedaState extends State<CambioDeMoneda> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.lightBlue,
            title: Text('Cambio de Moneda'),
          ),
          body: Column(
            children: [
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('Dolar')),
                  SizedBox(width: 30.0),
                  ElevatedButton(onPressed: () {}, child: Text('Euro')),
                ],
                
              ),
              Padding(padding: EdgeInsets.all(20.0)),
              Row(
                
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  

                  Text('Compra'),
                  SizedBox(width: 30.0),
                  Text('|'),
                   SizedBox(width: 30.0),
                  Text('Venta'),
                ],
              ),
            ],
          )),
    );
  }
}

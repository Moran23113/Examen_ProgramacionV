// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CambioDeMoneda extends StatefulWidget {

  const CambioDeMoneda({super.key});

  @override
  State<CambioDeMoneda> createState() => _CambioDeMonedaState();
}

class _CambioDeMonedaState extends State<CambioDeMoneda> {
    TextEditingController controller = TextEditingController();


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
              Padding(padding: EdgeInsets.all(10.0)),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('24.6834'),
                      SizedBox(width: 50.0),
                      Text('24.8068'),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              SizedBox(
                height: 50.0,
                width: 100.0,
                child: TextField(
                  controller: TextEditingController(),
                  readOnly: true,
                  decoration: InputDecoration(labelText: 'USD'),
                  onChanged: (value) {
                    setState(() {
                      
                    });
                  },
                ),
              )
            ],
            
          )),
    );
  }
}

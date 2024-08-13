// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ffi' hide Double;  // Oculta `Double` de `dart:ffi`
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';
import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CambioDeMoneda extends StatefulWidget {
  const CambioDeMoneda({super.key});

  @override
  State<CambioDeMoneda> createState() => _CambioDeMonedaState();
}

class _CambioDeMonedaState extends State<CambioDeMoneda> {
  TextEditingController entrada = TextEditingController();
  TextEditingController salida = TextEditingController();
  int valor = 0;
  Double result=0 as Double;

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
                  ElevatedButton(
                      onPressed: () {
                        valor =
                            entrada.text.isEmpty ? 0 : int.parse(entrada.text);
                        print(valor);
                        result = (valor * 24.8068) as Double;
                        print(result);
                      },
                      child: Text('Dolar')),
                  SizedBox(width: 30.0),
                  ElevatedButton(
                      onPressed: () {
                        valor =
                            entrada.text.isEmpty ? 0 : int.parse(entrada.text);
                        
                        print(result);

                      },
                      child: Text('Euro')),
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
                      Text('L. 24.6834'),
                      SizedBox(width: 50.0),
                      Text('L .24.8068'),
                    ],
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              SizedBox(
                height: 50.0,
                width: 100.0,
                child: TextField(
                  controller: entrada,
                  readOnly: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.vertical()),
                      labelText: 'USD'),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
              Padding(padding: EdgeInsets.all(10.0)),
              SizedBox(
                  height: 50.0,
                  width: 100.0,
                  child: TextField(
                    controller: salida,
                    readOnly: true,
                    decoration: InputDecoration(labelText: 'Conversion'),
                  )),
            ],
          )),
    );
  }
}

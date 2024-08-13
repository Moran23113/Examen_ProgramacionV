// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

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
  double valor = 0.0;
  double result = 0.0;

  // Define las tasas de cambio
  final double tasaDeCambioDolar = 24.6834; 
  final double tasaDeCambioEuro = 27.1234; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
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
                    valor = entrada.text.isEmpty ? 0.0 : double.parse(entrada.text);
                    print(valor);
                    result = valor * tasaDeCambioDolar;
                    print(result);
                    salida.text = result.toStringAsFixed(2);
                  },
                  child: Text('Dólar'),
                ),
                SizedBox(width: 30.0),
                ElevatedButton(
                  onPressed: () {
                    valor = entrada.text.isEmpty ? 0.0 : double.parse(entrada.text);
                    print(valor);
                    result = valor * tasaDeCambioEuro;
                    print(result);
                    salida.text = result.toStringAsFixed(2);
                  },
                  child: Text('Euro'),
                ),
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
                    Text('L. ${tasaDeCambioDolar.toStringAsFixed(4)}'),
                    SizedBox(width: 50.0),
                    Text('L. ${tasaDeCambioEuro.toStringAsFixed(4)}'),
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
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                  labelText: 'USD o EUR',
                ),
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                  labelText: 'Conversión',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

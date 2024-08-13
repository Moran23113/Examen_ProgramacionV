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
  String conversionTipo = 'Dólares a Lempiras'; // Tipo de conversión seleccionado

  // Define las tasas de cambio
  final double tasaDeCambioDolarCompra = 24.6834;
  final double tasaDeCambioDolarVenta = 24.8068;
  final double tasaDeCambioEuroCompra = 27.1234;
  final double tasaDeCambioEuroVenta = 27.2456;

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
            DropdownButton<String>(
              value: conversionTipo,
              onChanged: (String? newValue) {
                setState(() {
                  conversionTipo = newValue!;
                  entrada.text = ''; // Limpiar el campo de entrada al cambiar el tipo de conversión
                  salida.text = ''; // Limpiar el campo de salida
                });
              },
              items: <String>[
                'Dólares a Lempiras',
                'Euros a Lempiras',
                'Lempiras a Dólares',
                'Lempiras a Euros'
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            ElevatedButton(
              onPressed: () {
                valor = entrada.text.isEmpty ? 0.0 : double.parse(entrada.text);
                if (conversionTipo == 'Dólares a Lempiras') {
                  result = valor * tasaDeCambioDolarCompra;
                } else if (conversionTipo == 'Euros a Lempiras') {
                  result = valor * tasaDeCambioEuroCompra;
                } else if (conversionTipo == 'Lempiras a Dólares') {
                  result = valor / tasaDeCambioDolarVenta;
                } else if (conversionTipo == 'Lempiras a Euros') {
                  result = valor / tasaDeCambioEuroVenta;
                }
                salida.text = result.toStringAsFixed(2);
              },
              child: Text('Convertir'),
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
                    Text('L. ${tasaDeCambioDolarCompra.toStringAsFixed(4)}'),
                    SizedBox(width: 50.0),
                    Text('L. ${tasaDeCambioEuroCompra.toStringAsFixed(4)}'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('USD ${tasaDeCambioDolarVenta.toStringAsFixed(4)}'),
                    SizedBox(width: 50.0),
                    Text('EUR ${tasaDeCambioEuroVenta.toStringAsFixed(4)}'),
                  ],
                ),
              ],
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            SizedBox(
              height: 50.0,
              width: 150.0,
              child: TextField(
                controller: entrada,
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.vertical(),
                  ),
                  labelText: conversionTipo.contains('Lempiras') ? 'Moneda' : 'USD o EUR',
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            SizedBox(
              height: 50.0,
              width: 150.0,
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

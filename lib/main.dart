// Crear una app en Flutter considerando lo siguiente usando rows y column debe crear el diseño de una calculadora
// Para esto debe crear un widget personalizado de tipo botón que sea reutilizado para todos los botones.
//INSTRUCCIONES
// 1. Crear un widget personalizado de tipo botón
// 2. Crear un diseño de una calculadora usando rows y column
// 3. Reutilizar el widget personalizado de tipo botón para todos los botones


import 'package:flutter/material.dart';

void main() {
  runApp(const calculadora());
}

class Boton extends StatelessWidget {
  final String texto;
  const Boton({Key? key, required this.texto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(5),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(texto),
        ),
      ),
    );
  }
}

class calculadora extends StatelessWidget {
  const calculadora({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculadora de German'),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end, // alineacion de los botones abajo
            children: <Widget>[
              Row(
                children: <Widget>[
                  Boton(texto: '7'),
                  Boton(texto: '8'),
                  Boton(texto: '9'),
                  Boton(texto: '/')
                ],
              ),
              Row(
                children: <Widget>[
                  Boton(texto: '4'),
                  Boton(texto: '5'),
                  Boton(texto: '6'),
                  Boton(texto: 'x')
                ],
              ),
              Row(
                children: <Widget>[
                  Boton(texto: '1'),
                  Boton(texto: '2'),
                  Boton(texto: '3'),
                  Boton(texto: '-')
                ],
              ),
              Row(
                children: <Widget>[
                  Boton(texto: 'C'),
                  Boton(texto: '0'),
                  Boton(texto: '='),
                  Boton(texto: '+')
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}





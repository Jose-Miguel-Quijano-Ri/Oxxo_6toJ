import 'package:flutter/material.dart';
import 'package:quijano/galeria_oxxo.dart';

void main() {
  runApp(OxxoApp());
} // Funcion principal

class OxxoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tienda Oxxo V2',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: PaginaInicial());
  } // Widgets
} // Clase OxxoApp Widgets sin estado

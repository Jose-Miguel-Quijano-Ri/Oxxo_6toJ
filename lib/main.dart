import 'package:flutter/material.dart';

void main() {
  runApp(OxxoApp());
} // Funcion principal

class OxxoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tienda Oxxo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: PaginaInicial());
  } // Widgets
} // Clase OxxoApp Widgets sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} // Widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/oxxo1.jpg",
    "assets/images/oxxo2.jpg",
    "assets/images/oxxo3.jpg",
    "assets/images/oxxo4.jpg",
    "assets/images/oxxo5.jpg",
    "assets/images/oxxo6.jpg",
    "assets/images/oxxo7.jpg",
    "assets/images/oxxo8.jpg",
    "assets/images/oxxo6.jpg",
    "assets/images/oxxo7.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Galeria de Oxxo"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 10,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}

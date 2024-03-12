import 'package:flutter/material.dart';

void main() => runApp(AppMiTapBar());

class AppMiTapBar extends StatelessWidget {
  const AppMiTapBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Vivian Uribe",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MiPaginaInicial(),
    );
  }
}

//stateful
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Tabbar Vivian Uribe"),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Tab(
              text: "Facial",
              icon: Icon(Icons.face_retouching_natural),
            ),
            Tab(
              text: "Cuerpo",
              icon: Icon(Icons.boy),
            ),
            Tab(
              text: "Cabello",
              icon: Icon(Icons.face_2),
            ),
            Tab(
              text: "otros",
              icon: Icon(Icons.auto_awesome),
            ),
          ] //fin de tabs
              ), //fin bottom tabbar
        ),
        body: TabBarView(children: const <Widget>[
          Center(
            child: Text(
              "Skin care",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
          Center(
            child: Text(
              "Productos para el cuerpo",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Productos para el cabello",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
          Center(
            child: Text(
              "Productos ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
          ),
        ]), // fin de tabbview
      ),
    ); //DefaultTabController
  } //fin widget
} //_MiPaginaInicialState

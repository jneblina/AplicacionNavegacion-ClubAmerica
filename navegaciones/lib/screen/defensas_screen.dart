import 'package:flutter/material.dart';

class DefensasScreen extends StatelessWidget {
  const DefensasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Defensas'),
          backgroundColor: Colors.blue[900]),
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          jugadores('assets/images/Israel.jpg', '#3 Israel Reyes 🇲🇽'),
          jugadores('assets/images/Fuentes.jpg', '#2 Luis Fuentes 🇲🇽'),
          jugadores('assets/images/Caceres.jpg', '#4 Sebastián Cáceres 🇺🇾'),
          jugadores('assets/images/Araujo.jpg', '#14 Néstor Araujo 🇲🇽'),
          jugadores('assets/images/Layun.jpg', '#19 Miguel Layún 🇲🇽'),
        ],
      ),
    );
  }

  Card jugadores(String imagen, String nombre) {
    return Card(
        color: Colors.blue[800],
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(children: [
          Stack(
            children: [
              Image(
                image: AssetImage(
                  imagen,
                ),
                height: 240,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Text(
            nombre,
            style: const TextStyle(fontSize: 18, color: Colors.white),
          )
        ]));
  }
}

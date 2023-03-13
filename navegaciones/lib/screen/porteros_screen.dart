import 'package:flutter/material.dart';

class PorterosScreen extends StatelessWidget {
  const PorterosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Porteros'),
          backgroundColor: Colors.blue[900]),
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          jugadores('assets/images/Oscar.jpg', '#27 Oscar Jiménez 🇲🇽'),
          jugadores('assets/images/Malagon.jpg', '#33 Luis Malagón 🇲🇽'),
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

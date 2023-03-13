import 'package:flutter/material.dart';

class MediosScreen extends StatelessWidget {
  const MediosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Medios'),
          backgroundColor: Colors.blue[900]),
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          jugadores('assets/images/Diego.jpg', '#10 Diego Valdés 🇨🇱'),
          jugadores('assets/images/Fidalgo.jpg', '#8 Álvaro Fidalgo 🇪🇸'),
          jugadores('assets/images/Leo.jpg', '#32 Leonardo Suárez 🇦🇷'),
          jugadores('assets/images/Richard.jpg', '#20 Richard Sánchez 🇵🇾'),
          jugadores(
              'assets/images/Zendejas.jpg', '#17 Alejandro Zendejas 🇲🇽'),
          jugadores('assets/images/Damm.jpg', '#25 Jurgen Damm 🇲🇽'),
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

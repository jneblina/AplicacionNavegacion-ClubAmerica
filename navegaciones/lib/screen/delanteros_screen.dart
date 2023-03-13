import 'package:flutter/material.dart';

class DelanterosScreen extends StatelessWidget {
  const DelanterosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Delanteros'),
          backgroundColor: Colors.blue[900]),
      backgroundColor: Colors.black,
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          jugadores('assets/images/Henry.png', '#21 Henry Martin 🇲🇽'),
          jugadores('assets/images/Roger.jpg', '#9 Roger Martinez 🇨🇴'),
          jugadores(
              'assets/images/Cabecita.jpg', '#11 Jonathan Rodriguez 🇺🇾'),
          jugadores('assets/images/Vinas.jpg', '#9 Federico Viñas 🇺🇾'),
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

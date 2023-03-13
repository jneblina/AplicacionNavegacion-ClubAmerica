import 'package:flutter/material.dart';
import 'package:navegaciones/screen/delanteros_screen.dart';
import 'package:navegaciones/screen/medios_screen.dart';
import 'package:navegaciones/screen/defensas_screen.dart';
import 'package:navegaciones/screen/porteros_screen.dart';
import 'package:navegaciones/screen/director_screen.dart';

class PlayersScreen extends StatelessWidget {
  const PlayersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Jugadores Club America'),
          backgroundColor: Colors.blue[900]),
      backgroundColor: Colors.black,
      body: Center(
        child: ListView(
          children: [
            ListTile(
              title: const Text(
                'Delanteros',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('En esta pantalla están los delanteros'),
              textColor: Colors.white,
              trailing: const Icon(Icons.arrow_forward),
              iconColor: Colors.white,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Delantero.png"),
                backgroundColor: Colors.amber,
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const DelanterosScreen(),
                );
                Navigator.push(context, ruta);
              },
            ),
            ListTile(
              title: const Text(
                'Medios',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('En esta pantalla están los medios'),
              textColor: Colors.white,
              trailing: const Icon(Icons.arrow_forward),
              iconColor: Colors.white,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Medio.png"),
                backgroundColor: Colors.amber,
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const MediosScreen(),
                );
                Navigator.push(context, ruta);
              },
            ),
            ListTile(
              title: const Text(
                'Defensas',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('En esta pantalla están los defensas'),
              textColor: Colors.white,
              trailing: const Icon(Icons.arrow_forward),
              iconColor: Colors.white,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Defensa.png"),
                backgroundColor: Colors.amber,
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const DefensasScreen(),
                );
                Navigator.push(context, ruta);
              },
            ),
            ListTile(
              title: const Text(
                'Porteros',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('En esta pantalla están los porteros'),
              textColor: Colors.white,
              trailing: const Icon(Icons.arrow_forward),
              iconColor: Colors.white,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/Portero.png"),
                backgroundColor: Colors.amber,
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const PorterosScreen(),
                );
                Navigator.push(context, ruta);
              },
            ),
            ListTile(
              title: const Text(
                'DT',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text('En esta pantalla está el director técnico'),
              textColor: Colors.white,
              trailing: const Icon(Icons.arrow_forward),
              iconColor: Colors.white,
              leading: const CircleAvatar(
                backgroundImage: AssetImage("assets/images/DT.png"),
                backgroundColor: Colors.amber,
              ),
              onTap: () {
                final ruta = MaterialPageRoute(
                  builder: (_) => const DirectorScreen(),
                );
                Navigator.push(context, ruta);
              },
            ),
          ],
        ),
      ),
    );
  }
}

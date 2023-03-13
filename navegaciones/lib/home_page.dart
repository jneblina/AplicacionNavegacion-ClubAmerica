import 'package:flutter/material.dart';
import 'package:navegaciones/screen/players_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/Fondo.jpg"),
                fit: BoxFit.cover)),
        child: Center(
          child: Stack(
            children: [
              Positioned(
                bottom: 100,
                left: 150,
                child: ElevatedButton(
                  onPressed: () {
                    final ruta = MaterialPageRoute(
                      builder: (_) => const PlayersScreen(),
                    );
                    Navigator.push(context, ruta);
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStatePropertyAll<Color>(Colors.blue.shade900),
                  ),
                  child: const Text("Iniciar", style: TextStyle(fontSize: 24)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

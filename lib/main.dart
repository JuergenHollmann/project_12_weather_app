import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(0, 170, 188, 255),
        body: SafeArea(
          child: WeatherApp(),
        ),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  // const WeatherApp(Scaffold scaffold, {super.key}); // funzt nicht!
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          AppBar(
              title: const Text('Einfache Wetter-App'),
              foregroundColor: Colors.white, // Schriftfarbe
              backgroundColor:
                  const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
              toolbarHeight: 80,
              shadowColor: Colors.white,
              elevation: 20),
          const SizedBox(height: 40),
          const Text("Willkommen zur Wetter-App",
              style: TextStyle(color: Colors.blue, fontSize: 24)),
        ],
      ),
    );
  }
}

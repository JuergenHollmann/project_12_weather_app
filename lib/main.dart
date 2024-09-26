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
        backgroundColor: Color.fromARGB(255, 17, 0, 209),
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
              title: const Text("Einfache Wetter-App",
                  style: TextStyle(fontSize: 28)),
              foregroundColor: Colors.white, // Schriftfarbe
              backgroundColor:
                  const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
              toolbarHeight: 80,
              shadowColor: Colors.white,
              elevation: 20),
          const SizedBox(height: 40),
          const Text("Willkommen zur Wetter-App",
              style: TextStyle(color: Colors.blue, fontSize: 24)),
          const SizedBox(height: 0),
          const Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),
          const Column(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Stadt:",
                    style: TextStyle(color: Colors.amber, fontSize: 20)),
                SizedBox(height: 10),
                Text("Schwäbisch Gmünd",
                    style: TextStyle(color: Colors.amber, fontSize: 26)),
                Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),

                Text("Temperatur:",
                    style: TextStyle(color: Colors.amber, fontSize: 20)),
                SizedBox(height: 10),
                Text("28 °C",
                    style: TextStyle(color: Colors.amber, fontSize: 36)),
                Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),

                Text("Wetter:",
                    style: TextStyle(color: Colors.amber, fontSize: 20)),
                SizedBox(height: 10),
                Text("leicht bewölkt",
                    style: TextStyle(color: Colors.amber, fontSize: 26)),
                Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),

              ]),
        ],
      ),
    );
  }
}

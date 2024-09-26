// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
  // const WeatherData(city: "München (DE)", temperature: 20.9, weatherCondition: "regnerisch");
  WeatherData newWeatherData = const WeatherData(
    city: "Hamburg (DE)",
    temperature: 28.9,
    weatherCondition: "windig",
  );
  print(newWeatherData.city);
  print(newWeatherData.temperature);
  print(newWeatherData.weatherCondition);

//  void getCity(){
//       newWeatherData.city;
//       // setState(() {});
//  }
}

class WeatherData extends WeatherApp {
  final String city;
  final double temperature;
  final String weatherCondition;
  const WeatherData(
      {super.key,
      required this.city,
      required this.temperature,
      required this.weatherCondition});
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
    // ignore: avoid_unnecessary_containers
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
              // mainAxisAlignment: MainAxisAlignment.center, // hat keinen Effekt
              // crossAxisAlignment: CrossAxisAlignment.center, // hat keinen Effekt
              children: [
                Text("Staxdt:",
                    style: TextStyle(color: Colors.amber, fontSize: 20)),
                SizedBox(height: 10),
                Text("Schwäbisch Gmünd",
                    style: TextStyle(color: Colors.amber, fontSize: 26)),
                Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),
                Text("Temperatur:",
                    style: TextStyle(color: Colors.amber, fontSize: 20)),
                SizedBox(height: 10),
                Text("28.3 °C",
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

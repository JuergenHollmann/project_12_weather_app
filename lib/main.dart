import 'package:flutter/material.dart';
// import 'data_repository.dart';

void main() {
  final dataRepository = WeatherRepository;
  runApp(MainApp(repository: dataRepository));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key, required this.repository});
  final DataRepository repository;

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        //repository: WeatherRepository,
        backgroundColor: Color.fromARGB(255, 17, 0, 209),
        body: SafeArea(
          child: WeatherApp(
            repository: null,
          ),
        ),
      ),
    );
  }
}

class WeatherData extends WeatherApp {
  final String city;
  final double temperature;
  final String weatherCondition;
  const WeatherData(
      {super.key,
      required this.city,
      required this.temperature,
      required this.weatherCondition,
      required super.repository});
}

class WeatherApp extends StatefulWidget {
  //const WeatherApp(Scaffold scaffold, {super.key}); // funzt nicht!
  const WeatherApp({super.key, required this.repository});
  final DataRepository repository;

  @override
  State<WeatherApp> createState() => _WeatherAppState();
}

class _WeatherAppState extends State<WeatherApp> {
  // final WeatherDataX quote = widget.repository.getWeather();
  // String city = "Berlin";
  // double temperature = 18.7;
  // String weatherCondition = "leicht bewölkt";

  // void getCity(city) {
  //   setState(() {
  //     city = "London";
  //     //return print(city.toString()); // Rückgabe bei "void"
  //     //print(city.toString());
  //     //print(city);
  //   });
  // }

  // void getTemperature(double temperature) {
  //   setState(() {
  //     temperature = 12.5;
  //   });
  // }

  // void getWeatherCondition(String weatherCondition) {
  //   setState(() {
  //     weatherCondition = "starker Regen";
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final WeatherData inputData = widget.repository.getDataRepo();
    final String city = inputData.city;
    final double temperature = inputData.temperature;
    final String weatherCondition = inputData.weatherCondition;

    // String city = "Berlin";
    // double temperature = 18.7;
    // String weatherCondition = "leicht bewölkt";

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
          Column(children: [
            const Text("Stadt:",
                style: TextStyle(color: Colors.amber, fontSize: 20)),
            const SizedBox(height: 10),
            Text(city,
                style: const TextStyle(color: Colors.amber, fontSize: 26)),
            const Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),
            const Text("Temperatur:",
                style: TextStyle(color: Colors.amber, fontSize: 20)),
            const SizedBox(height: 10),
            Text("$temperature °C",
                style: const TextStyle(color: Colors.amber, fontSize: 36)),
            const Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),
            const Text("Wetter:",
                style: TextStyle(color: Colors.amber, fontSize: 20)),
            const SizedBox(height: 10),
            Text(weatherCondition,
                style: const TextStyle(color: Colors.amber, fontSize: 26)),
            const Divider(thickness: 2, height: 60, indent: 20, endIndent: 20),
            ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: const Text("Die Wetterdaten einer anderen Stadt laden")),
          ]),
        ],
      ),
    );
  }
}

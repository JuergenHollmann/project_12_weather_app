import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WeatherApp(
        Scaffold(
          body: Container(
            // child: AppBar(
            //   title: const Text('Wetter-App'),
            //   foregroundColor: Colors.white, // Schriftfarbe
            //   backgroundColor:
            //       const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
            //   shadowColor: Colors.black87, // funzt nicht
            //   elevation: 20, // graue Zone unter der AppBar
            // ),

            child: const Text("Willkommen zur Wetter-App",
                style: TextStyle(color: Colors.blue, fontSize: 24)),
          ),
        ),
      ),
    );
  }
}

class WeatherApp extends StatelessWidget {
  const WeatherApp(Scaffold scaffold, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: AppBar(
        title: const Text('Einfache Wetter-App'),
        foregroundColor: Colors.white, // Schriftfarbe
        backgroundColor: const Color.fromARGB(255, 4, 85, 151), // dunkles Blau
        toolbarHeight: 60,
        // shadowColor: Colors.black87, // funzt nicht
        elevation: 20, // graue Zone unter der AppBar
      ),
      //  const Text("Willkommenzur Wetter-App",
      //   style: TextStyle(color: Colors.blue, fontSize: 24)),
    );
  }
}


//     return const MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Text('Hello World!'),
//         ),
//       ),
//     );
//   }
// }
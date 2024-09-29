import 'dart:math';
import 'package:project_12_weather_app/data_repository.dart';
import 'package:project_12_weather_app/main.dart';

class WeatherRepository extends DataRepository {
  //WeatherRepository({super.key, required super.repository});
  final List<WeatherData> _newWeather = [
    const WeatherData(
      city: "Timbuktu",
      temperature: 22.5,
      weatherCondition: "sonnig", repository: null,
    ),
    const WeatherData(
      city: "Mailand",
      temperature: 26.2,
      weatherCondition: "leicht bewölkt", repository: null,
    ),
    const WeatherData(
      city: "Schwäbisch Gmünd",
      temperature: 18.7,
      weatherCondition: "leichter Regen", repository: null,
    ),
    const WeatherData(
      city: "Hamburg",
      temperature: 17.1,
      weatherCondition: "bewölkt und windig", repository: null,
    ),
  ];

  // Eine andere Stadt per Zufall (random) aus der Liste auswählen.
  // WeatherData getWeather() => _newWeather[Random().nextInt(_newWeather.length)];
  
    @override
      WeatherData getDataRepo() => _newWeather[Random().nextInt(_newWeather.length)];
}

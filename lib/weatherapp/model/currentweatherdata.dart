import 'package:course/weatherapp/model/clouds.dart';
import 'package:course/weatherapp/model/lol.dart';
import 'package:course/weatherapp/model/main_weather.dart';
import 'package:course/weatherapp/model/sys.dart';
import 'package:course/weatherapp/model/weather.dart';
import 'package:course/weatherapp/model/wind.dart';

class CurrentWeatherData {
  final Coord? coord;
  final List<Weather>? weather;
  final String? base;
  final Mainweather? main;
  final int? visibility;
  final Wind? wind;
  final Clouds? clouds;
  final int? dt;
  final Sys? sys;
  final int? timezone;
  final int? id;
  final String? name;
  final int? cod;

  CurrentWeatherData(
      {this.coord,
      this.weather,
      this.base,
      this.main,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.sys,
      this.timezone,
      this.id,
      this.name,
      this.cod});

  factory CurrentWeatherData.fromJson(dynamic json) {
    if (json == null) {
      return CurrentWeatherData();
    }

    return CurrentWeatherData(
      coord: Coord.fromJson(json['coord']),
      weather:
          (json['weather'] as List).map((w) => Weather.fromJson(w)).toList(),
      base: json['base'],
      main: Mainweather.fromjson(json['main']),
      visibility: json['visibility'],
      wind: Wind.fromJson(json['wind']),
      clouds: Clouds.fromJson(json['clouds']),
      dt: json['dt'],
      sys: Sys.fromJson(json['sys']),
      timezone: json['timezone'],
      id: json['id'],
      name: json['name'],
      cod: json['cod'],
    );
  }
}

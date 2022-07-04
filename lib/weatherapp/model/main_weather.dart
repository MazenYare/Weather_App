class Mainweather {
  final double temp;
  final double? feelsLike;
  final double? tempMin;
  final double? tempMax;
  final int? pressure;
  final int? humidity;

  Mainweather({
    required this.temp,
    required this.feelsLike,
    required this.humidity,
    required this.pressure,
    required this.tempMin,
    required this.tempMax,
  });
  factory Mainweather.fromjson(Map<String, dynamic> json) {
    return Mainweather(
      temp: (json["temp"]),
      feelsLike: (json["feels_like"]),
      humidity: (json["humidity"]),
      pressure: (json["pressure"]),
      tempMin: (json["temp_min"]),
      tempMax: (json["temp_max"]),
    );
  }
  Map<String, dynamic> tojson() {
    return {
      "temp": temp,
      "feels_like": feelsLike,
      "temp_min": tempMin,
      "temp_max": tempMax,
      "pressure": pressure,
      "humidity": humidity,
    };
  }
}

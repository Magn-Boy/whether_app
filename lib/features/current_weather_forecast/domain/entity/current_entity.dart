import 'package:whether_app/features/current_weather_forecast/domain/entity/whether_entity.dart';

class CurrentEntity {
  final int dt;
  final int sunrise;
  final int sunset;
  final double temp;
  final double feelsLike;
  final double pressure;
  final double humidity;
  final double windSpeed;
  final List<WeatherEntity> weather;

  const CurrentEntity({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.windSpeed,
    required this.weather,
  });
}

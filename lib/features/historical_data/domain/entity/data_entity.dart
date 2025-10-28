import 'package:whether_app/features/current_whether_forecast/domain/entity/whether_entity.dart';

class DataEntity {
  final int dt;
  final double temp;
  final double feelsLike;
  final int pressure;
  final int humidity;
  final double windSpeed;
  final List<WeatherEntity> weather;

  const DataEntity({
    required this.dt,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.windSpeed,
    required this.weather,
  });
}
